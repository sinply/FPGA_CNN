#include "stdio.h"
#include "conv_core.h"

#define IN_WIDTH 3
#define IN_HEIGHT 3
#define IN_CH 3

#define KERNEL_WIDTH 3
#define KERNEL_HEIGHT 3
#define X_STRIDE 1
#define Y_STRIDE 1

#define RELU_EN  0
#define MODE     1          //0:VALID, 1:SAME
#define X_PADDING (MODE?(KERNEL_WIDTH-1)/2:0)
#define Y_PADDING (MODE?(KERNEL_HEIGHT-1)/2:0)

#define OUT_CH 2
#define OUT_WIDTH ((IN_WIDTH+2*X_PADDING-KERNEL_WIDTH)/X_STRIDE+1)
#define OUT_HEIGHT ((IN_HEIGHT+2*Y_PADDING-KERNEL_HEIGHT)/Y_STRIDE+1)

int main(void)
{
	Dtype_f feature_in[IN_CH][IN_WIDTH][IN_HEIGHT];
	Dtype_w W[OUT_CH][IN_CH][KERNEL_WIDTH][KERNEL_HEIGHT];
	Dtype_w bias[OUT_CH];
	Dtype_f feature_out[OUT_CH][OUT_WIDTH][OUT_HEIGHT];

	for(int cin=0;cin<IN_CH;cin++)
		for(int i=0;i<IN_WIDTH;i++)
			for(int j=0;j<IN_HEIGHT;j++)
			{
				feature_in[cin][i][j]=1;
			}

	for(int cout=0;cout<OUT_CH;cout++)
		for(int cin=0;cin<IN_CH;cin++)
			for(int i=0;i<KERNEL_WIDTH;i++)
				for(int j=0;j<KERNEL_HEIGHT;j++)
				{
					W[cout][cin][i][j]=1;
				}

	for(int cout=0;cout<OUT_CH;cout++)
	{
		bias[cout]=cout;
	}

	//&feature_in[0][0][0] = feature[0][0]
	Conv(IN_CH,IN_HEIGHT,IN_WIDTH,OUT_CH,
			KERNEL_WIDTH,KERNEL_HEIGHT,X_STRIDE,Y_STRIDE,MODE,RELU_EN,
			feature_in[0][0],W[0][0][0],bias,feature_out[0][0]
		);

	for(int cout=0;cout<OUT_CH;cout++)
		for(int i=0;i<OUT_WIDTH;i++)
			for(int j=0;j<OUT_HEIGHT;j++)
			{
				printf("OUT[%d][%d][%d]=%f\n", cout,i,j,feature_out[cout][i][j]);
			}

	return 0;
}
