#include <stdio.h>

void matrix_add(int A[4][4], int B[4][4],  int C[4][4])
{
//#pragma HLS INTERFACE s_axilite port=return
#pragma HLS ARRAY_RESHAPE variable=B complete dim=2
#pragma HLS ARRAY_RESHAPE variable=B complete dim=1
	for (int i = 0; i < 4; i++)
	#pragma HLS UNROLL
	{
		for (int j = 0; j < 4; j++)
		#pragma HLS UNROLL
		{
			C[i][j] = A[i][j] + B[i][j];
		}
	}
}
