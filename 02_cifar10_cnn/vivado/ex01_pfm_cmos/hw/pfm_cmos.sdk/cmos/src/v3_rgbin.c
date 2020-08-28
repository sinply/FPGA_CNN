/*
 * v3_rgbin.c
 *
 *  Created on: 2015Äê8ÔÂ5ÈÕ
 *      Author: James
 */
#include "v3_rgbin.h"

// initial rgbin ip
void video_in_init(unsigned int BaseAddr, unsigned int* pDstAddr, unsigned int nWidth,unsigned int nHeight)
{
	Xil_Out32(BaseAddr+RGBIN_EN, 0);
	Xil_Out32(BaseAddr+RGBIN_ADDR, (unsigned int)pDstAddr);
	Xil_Out32(BaseAddr+RGBIN_VS_HS, ((nHeight<<16)|nWidth));
	Xil_Out32(BaseAddr+RGBIN_BUF_INDEX, 0);
	Xil_Out32(BaseAddr+RGBIN_EN, 1);
}

// set the index which the ps is using
void set_video_in_index(unsigned int BaseAddr,unsigned int index)
{
	Xil_Out32(BaseAddr+RGBIN_BUF_INDEX, index);
}

// get the index which the pl is using
unsigned int get_video_in_index(unsigned int BaseAddr)
{
	return Xil_In32(BaseAddr+RGBIN_BUF_INDEX);
}

// reset video input
void video_in_reset(unsigned int BaseAddr)
{
	Xil_Out32(BaseAddr+RGBIN_EN, 0x0);
}




