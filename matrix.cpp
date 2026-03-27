#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(CP_UTF8);
    SetConsoleOutputCP(CP_UTF8);

    int repeat_time;
    cin >> repeat_time;
    for (int a = 0; a < repeat_time; a++)
    {

        int size;
        int repeat = 100;
        cin >> size;
        long long head, tail, freq;
        int** matrix=new int*[size];

        for (int i = 0; i < size; i++)
        {
            matrix[i]=new int[size];
            for (int j = 0; j < size; j++)
            {
                matrix[i][j] = i + j;
            }
        }

        int* vector=new int[size];
        for (int i = 0; i < size; i++)
        {
            vector[i] = i;
        }

        int * sum=new int [size];
        QueryPerformanceFrequency((LARGE_INTEGER *)&freq);
        // start time
        QueryPerformanceCounter((LARGE_INTEGER *)&head);
        for (int x = 0; x < repeat; x++)
        {
            for (int i = 0; i < size; i++)
            sum[i] = 0;
            for (int i = 0; i < size; i++)
            {

                for (int j = 0; j < size; j++)
                {
                    sum[i] += matrix[j][i] * vector[j];
                }
            }
        }
        QueryPerformanceCounter((LARGE_INTEGER *)&tail);
        double cache_ms = (tail - head) * 1000.0 / freq / repeat;
        // 优化算法
        long long head1, tail1, freq1;
        int* sum2=new int[size];
        QueryPerformanceFrequency((LARGE_INTEGER *)&freq1);
        // start time
        QueryPerformanceCounter((LARGE_INTEGER *)&head1);
        for (int x = 0; x < repeat; x++)
        {
            for (int i = 0; i < size; i++)
            sum2[i] = 0;
            for (int i = 0; i < size; i++)
            {
                    for (int j = 0; j < size; j++)
                    {
                        sum2[j] += matrix[i][j] * vector[i];
                    }
            }
        }
        QueryPerformanceCounter((LARGE_INTEGER *)&tail1);
        double cache_ms2 = (tail1 - head1) * 1000.0 / freq1 / repeat;
        cout << "本次规模大小为 " << size << " 两个算法分别所用时间为" << cache_ms << ' ' << cache_ms2 << endl;
        delete[] sum;
        delete[] sum2;
        delete[] vector;
        for(int i=0;i<size;i++)
        delete []matrix[i];
        delete [] matrix;
    }
    return 0;
}
