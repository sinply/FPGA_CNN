/*
 * v3_rgbin.h
 *
 *  Created on: 2015Äê8ÔÂ5ÈÕ
 *      Author: James
 */

#ifndef V3_RGBIN_H_
#define V3_RGBIN_H_
#include "xil_types.h"
#include "xil_io.h"

#define RGBIN_EN		0x00		//1 start ; 0 reset ip
#define RGBIN_ADDR		0x04		//the Dst Addr
#define RGBIN_VS_HS		0x0C		//high 16bit->Vertical Resolution; low 16bit->Horizon Resolution
#define RGBIN_BUF_INDEX	0x08		//0,1,2 three rgbin buffer index



// initial rgbin ip
//
void video_in_init(unsigned int BaseAddr, unsigned int* pDstAddr, unsigned int nWidth,unsigned int nHeight);

// set the index which the ps is using
void set_video_in_index(unsigned int BaseAddr,unsigned int index);
// get the index which the pl is using
unsigned int get_video_in_index(unsigned int BaseAddr);
// reset video input
void video_in_reset(unsigned int BaseAddr);


#endif /* V3_RGBOUT_H_ */
