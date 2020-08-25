#include "stdio.h"
#include "pool_core.h"

#define MODE 	2	//mode: 0:MEAN, 1:MIN, 2:MAX
#define IN_WIDTH 4
#define IN_HEIGHT 4
#define IN_CH 2

#define KERNEL_WIDTH 2
#define KERNEL_HEIGHT 2

#define OUT_WIDTH (IN_WIDTH/KERNEL_WIDTH)
#define OUT_HEIGHT (IN_HEIGHT/KERNEL_HEIGHT)

int main(void)
{
	Dtype_f feature_in[IN_CH][IN_WIDTH][IN_HEIGHT];
	Dtype_f feature_out[IN_CH][OUT_WIDTH][OUT_HEIGHT];

	for(int cin=0;cin<IN_CH;cin++)
		for(int i=0;i<IN_WIDTH;i++)
			for(int j=0;j<IN_HEIGHT;j++)
				feature_in[cin][i][j]=cin*IN_WIDTH*IN_HEIGHT+i*IN_HEIGHT+j;

	Pool(IN_CH,IN_HEIGHT,IN_WIDTH,
			KERNEL_WIDTH,KERNEL_HEIGHT,MODE,
			feature_in[0][0],feature_out[0][0]
		);//mode: 0:MEAN, 1:MIN, 2:MAX

	for(int cout=0;cout<IN_CH;cout++)
		for(int i=0;i<OUT_WIDTH;i++)
			for(int j=0;j<OUT_HEIGHT;j++)
			{
				printf("OUT[%d][%d][%d]=%f\n", cout,i,j,feature_out[cout][i][j]);
			}
}
