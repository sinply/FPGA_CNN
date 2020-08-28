/*
 * v3_rgbout.c
 *
 *  Created on: 2015Äê8ÔÂ5ÈÕ
 *      Author: James
 */
#include "v3_rgbout.h"

// initial rgbout ip
// 1080p or 1024*600 etc
void video_out_init(unsigned int BaseAddr)
{
	Xil_Out32(BaseAddr+HS_SYNC_FP, ((HS_SYNC<<16)|HS_FP));
	Xil_Out32(BaseAddr+HS_VALID_BP, ((HS_VALID<<16)|HS_BP));
	Xil_Out32(BaseAddr+VS_SYNC_FP, ((VS_SYNC<<16)|VS_FP));
	Xil_Out32(BaseAddr+VS_VALID_BP, ((VS_VALID<<16)|VS_BP));
}

// start video output
void video_out_start(unsigned int BaseAddr, unsigned int* pSrcAddr,u8 layer)
{
	if(layer>=2) layer =0;		// two buffers
	else
	{
		Xil_Out32(BaseAddr+RGBOUT_ADDR, (unsigned int)(pSrcAddr+(layer<<24)));
	}
	Xil_Out32(BaseAddr+RGBOUT_EN, 0x1);
}
// reset video output
void video_out_reset(unsigned int BaseAddr)
{
	Xil_Out32(BaseAddr+RGBOUT_EN, 0x0);
}




