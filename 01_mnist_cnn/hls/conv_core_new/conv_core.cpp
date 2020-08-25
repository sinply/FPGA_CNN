#include "conv_core.h"

//Feature: [H][W][C]
//kernel: [Ky][Kx][CHin][CHout]

void Conv(ap_uint<16> CHin,ap_uint<16> Hin,ap_uint<16> Win,ap_uint<16> CHout,
		ap_uint<8> Kx,ap_uint<8> Ky,ap_uint<8> Sx,ap_uint<8> Sy,ap_uint<1> mode,ap_uint<1> relu_en,
		Dtype_f feature_in[],Dtype_w W[],Dtype_w bias[],Dtype_f feature_out[]
	)//mode: 0:VALID, 1:SAME
{
	//#pragma HLS PIPELINE enable_flush
	#pragma HLS INTERFACE m_axi depth=4294967295 port=feature_out offset=slave
	#pragma HLS INTERFACE m_axi depth=4294967295 port=bias offset=slave
	#pragma HLS INTERFACE m_axi depth=4294967295 port=W offset=slave
	#pragma HLS INTERFACE m_axi depth=4294967295 port=feature_in offset=slave
	#pragma HLS INTERFACE s_axilite port=relu_en
	#pragma HLS INTERFACE s_axilite port=CHout
	#pragma HLS INTERFACE s_axilite port=Sx
	#pragma HLS INTERFACE s_axilite port=Hin
	#pragma HLS INTERFACE s_axilite port=CHin
	#pragma HLS INTERFACE s_axilite port=Kx
	#pragma HLS INTERFACE s_axilite port=mode
	#pragma HLS INTERFACE s_axilite port=Sy
	#pragma HLS INTERFACE s_axilite port=Ky
	#pragma HLS INTERFACE s_axilite port=Win
	#pragma HLS INTERFACE s_axilite port=return

	ap_uint<8> pad_x,pad_y;
	if(mode==0)
	{
		pad_x=0;pad_y=0;
	}
	else
	{
		pad_x=(Kx-1)/2;pad_y=(Ky-1)/2;
	}
	ap_uint<16> Hout,Wout;
	Wout=(Win+2*pad_x-Kx)/Sx+1;
	Hout=(Hin+2*pad_y-Ky)/Sy+1;

	for(int cout=0;cout<CHout;cout++)  //channel output
		for(int i=0;i<Wout;i++)		   //weight output
			for(int j=0;j<Hout;j++)    //height output
			{
				Dtype_acc sum=0;
				for(int cin=0;cin<CHin;cin++)
				{
					for(int ii=0;ii<Kx;ii++)
						for(int jj=0;jj<Ky;jj++)
						{
							ap_int<16> w=i*Sx-pad_x+ii;
							ap_int<16> h=j*Sy-pad_y+jj;
							if(h>=0 && w>=0 && h<Hin && w<Win)
							{
								//Feature [C][W][H]
								//kernel: [Ky][Kx][CHin][CHout]
								//Dtype_mul tp=feature_in[cin][w][h]*w[cout][cin][ii][jj];
//								std::cout<<"cin:"<<cin<<",w"<<w<<",h"<<h<<"\n";
//								std::cout<<"feature_in["<<cin*Hin*Win+w*Hin+h<<"]*W["<<cout*CHin*Kx*Ky+cin*Kx*Ky+ii*Ky+jj<<"]\n";
								Dtype_mul tp=feature_in[cin*Hin*Win+w*Hin+h]*W[cout*CHin*Kx*Ky+cin*Kx*Ky+ii*Ky+jj];
								sum+=tp;
							}
						}
				}
				sum+=bias[cout];
				if(relu_en && sum<0)
					sum=0;
				//feature_out[cout][i][j]=sum;
				feature_out[cout*Wout*Hout+i*Hout+j]=sum;
			}
}
