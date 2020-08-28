/*
 * v3_rgbout.h
 *
 *  Created on: 2015Äê8ÔÂ5ÈÕ
 *      Author: Thinkpad-T440p
 */

#ifndef V3_RGBOUT_H_
#define V3_RGBOUT_H_
#include "xil_types.h"
#include "xil_io.h"

#define resolution_1920_1080

#define RGBOUT_EN	0x00
#define RGBOUT_ADDR 0x04
#define HS_SYNC_FP	0x0C
#define HS_VALID_BP	0x10
#define VS_SYNC_FP 	0x14
#define VS_VALID_BP	0x18

#ifdef resolution_1024_600
#define HS_SYNC		16
#define HS_FP		160
#define HS_BP		160
#define HS_VALID	1024
#define VS_SYNC		2
#define VS_FP		12
#define VS_BP		23
#define VS_VALID	600
#define HsPixel		1024
#define Lines		600
#endif


#ifdef resolution_1920_1080
#define HS_SYNC		44
#define HS_FP		58
#define HS_BP		148
#define HS_VALID	1920
#define VS_SYNC		5
#define VS_FP		4
#define VS_BP		36
#define VS_VALID	1080
#define HsPixel		1920
#define Lines		1080
#endif

#ifdef resolution_1280_720
#define HS_SYNC		40
#define HS_FP		110
#define HS_BP		220
#define HS_VALID	1280
#define VS_SYNC		5
#define VS_FP		5
#define VS_BP		20
#define VS_VALID	720
#endif

//typedef unsigned int unsigned int;
//typedef unsigned char u8;

// initial rgbout ip
// 1080p or 1024*600 etc
void video_out_init(unsigned int BaseAddr);

// start video output
void video_out_start(unsigned int BaseAddr, unsigned int *pSrcAddr,u8 layer);

// reset video output
void video_out_reset(unsigned int BaseAddr);


#endif /* V3_RGBOUT_H_ */
