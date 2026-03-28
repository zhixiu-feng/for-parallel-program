#include <windows.h>
#include <iostream>
#include <iomanip>
using namespace std;

// 普通链式累加
double sum_naive(double* a, int n)
{
    double sum = 0.0;
    for (int i = 0; i < n; i++)
    {
        sum += a[i];
    }
    return sum;
}

// 2 路展开
double sum_unroll2(double* a, int n)
{
    double s1 = 0.0, s2 = 0.0;
    int i = 0;

    for (; i + 1 < n; i += 2)
    {
        s1 += a[i];
        s2 += a[i + 1];
    }

    for (; i < n; i++)
    {
        s1 += a[i];
    }

    return s1 + s2;
}

// 4 路展开
double sum_unroll4(double* a, int n)
{
    double s1 = 0.0, s2 = 0.0, s3 = 0.0, s4 = 0.0;
    int i = 0;

    for (; i + 3 < n; i += 4)
    {
        s1 += a[i];
        s2 += a[i + 1];
        s3 += a[i + 2];
        s4 += a[i + 3];
    }

    for (; i < n; i++)
    {
        s1 += a[i];
    }

    return s1 + s2 + s3 + s4;
}

// 递归两两求和（只用指针）
double sum_recursive_pairwise(double* a, int n)
{
    if (n == 0) return 0.0;
    if (n == 1) return a[0];

    int new_n = (n + 1) / 2;
    double* temp = new double[new_n];

    int i = 0, j = 0;
    for (; i + 1 < n; i += 2, j++)
    {
        temp[j] = a[i] + a[i + 1];
    }

    if (i < n)
    {
        temp[j] = a[i];
    }

    double ans = sum_recursive_pairwise(temp, new_n);
    delete[] temp;
    return ans;
}

// 根据规模设置重复次数
int repeat_time(int n)
{
    if (n < 1000) return 100000;
    if (n < 10000) return 10000;
    return 2000;
}

int main()
{
    int test_sizes[] = {64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536};
    int num_sizes = sizeof(test_sizes) / sizeof(test_sizes[0]);

    LARGE_INTEGER freq, start, end;
    QueryPerformanceFrequency(&freq);

    cout << fixed << setprecision(9);
    cout << "n"
         << "\tnaive(ms)"
         << "\tunroll2(ms)"
         << "\tunroll4(ms)"
         << "\trecursive(ms)"
         << "\tnaive_sum"
         << "\tunroll2_sum"
         << "\tunroll4_sum"
         << "\trecursive_sum"
         << endl;

    volatile double guard = 0.0;//防止O1 O2 O3优化的时候会直接跳过循环

    for (int k = 0; k < num_sizes; k++)
    {
        int n = test_sizes[k];
        int repeat = repeat_time(n);

        double* arr = new double[n];

        // 测试数据
        for (int i = 0; i < n; i++)
        {
            arr[i] = 1.0;
        }

        double ans1 = 0.0, ans2 = 0.0, ans3 = 0.0, ans4 = 0.0;
        double t1, t2, t3, t4;

        // 普通链式累加计时
        QueryPerformanceCounter(&start);
        for (int i = 0; i < repeat; i++)
        {
            ans1 = sum_naive(arr, n);
            guard += ans1;
        }
        QueryPerformanceCounter(&end);
        t1 = (end.QuadPart - start.QuadPart) * 1000.0 / freq.QuadPart / repeat;

        // 2 路展开计时
        QueryPerformanceCounter(&start);
        for (int i = 0; i < repeat; i++)
        {
            ans2 = sum_unroll2(arr, n);
            guard += ans2;
        }
        QueryPerformanceCounter(&end);
        t2 = (end.QuadPart - start.QuadPart) * 1000.0 / freq.QuadPart / repeat;

        // 4 路展开计时
        QueryPerformanceCounter(&start);
        for (int i = 0; i < repeat; i++)
        {
            ans3 = sum_unroll4(arr, n);
            guard += ans3;
        }
        QueryPerformanceCounter(&end);
        t3 = (end.QuadPart - start.QuadPart) * 1000.0 / freq.QuadPart / repeat;

        // 递归两两求和计时
        QueryPerformanceCounter(&start);
        for (int i = 0; i < repeat; i++)
        {
            ans4 = sum_recursive_pairwise(arr, n);
            guard += ans4;
        }
        QueryPerformanceCounter(&end);
        t4 = (end.QuadPart - start.QuadPart) * 1000.0 / freq.QuadPart / repeat;

        cout << n
             << "\t" << t1
             << "\t" << t2
             << "\t" << t3
             << "\t" << t4
             << "\t" << ans1
             << "\t" << ans2
             << "\t" << ans3
             << "\t" << ans4
             << endl;

        delete[] arr;
    }

    cout << "guard = " << guard << endl;

    return 0;
}