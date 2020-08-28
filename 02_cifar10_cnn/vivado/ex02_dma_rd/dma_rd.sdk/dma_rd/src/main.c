/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * main.c: simple hdmi out application
 * by James
 * 2015.08.04
 *
 */
#include <stdio.h>
//#include "imx222.h"
#include "xparameters.h"
#include "xil_cache.h"
//#include "xspips.h"
//#include "xgpiops.h"
#include "v3_rgbout.h"
#include "v3_rgbin.h"

#define FRAME_HEIGHT 1080
#define FRAME_WIDTH	 1920

unsigned int mrd_addr = XPAR_PLDMA_RGBOUT_0_BASEADDR;
//unsigned int mwr_addr = XPAR_PLDMA_RGBIN_0_BASEADDR;


int main() {
	// XSpiPs spips;
	// XSpiPs_Config* spi_config;
	// unsigned int Status;

	Xil_DCacheDisable();
	Xil_ICacheDisable();
	// // use ps gpio emio to
	// XGpioPs gpiops;
	// XGpioPs_Config *ConfigPtrPS;
	// ConfigPtrPS = XGpioPs_LookupConfig(0);
	// XGpioPs_CfgInitialize(&gpiops, ConfigPtrPS, ConfigPtrPS->BaseAddr);
	// XGpioPs_SetDirectionPin(&gpiops, 54, 1);
	// XGpioPs_SetOutputEnablePin(&gpiops, 54, 1);
	// XGpioPs_SetDirectionPin(&gpiops, 55, 1);
	// XGpioPs_SetOutputEnablePin(&gpiops, 55, 1);
	// XGpioPs_SetDirectionPin(&gpiops, 56, 1);
	// XGpioPs_SetOutputEnablePin(&gpiops, 56, 1);
	// XGpioPs_SetDirectionPin(&gpiops, 57, 1);
	// XGpioPs_SetOutputEnablePin(&gpiops, 57, 1);

	// XGpioPs_WritePin(&gpiops, 55, 0x1); 	//hdmi outout enable
	// XGpioPs_WritePin(&gpiops, 56, 0x1); 	//led on
	// XGpioPs_WritePin(&gpiops, 57, 0x1);		//coms reset_n

	// /*init spi*/
	// spi_config = XSpiPs_LookupConfig(XPAR_PS7_SPI_0_DEVICE_ID);
	// Status = XSpiPs_CfgInitialize(&spips, spi_config, spi_config->BaseAddress);
	// if (Status != XST_SUCCESS) {
	// 	return XST_FAILURE;
	// }
	// XSpiPs_Reset(&spips);
	// XSpiPs_SetOptions(&spips,XSPIPS_MASTER_OPTION | XSPIPS_FORCE_SSELECT_OPTION);
	// XSpiPs_SetClkPrescaler(&spips, XSPIPS_CLK_PRESCALE_16);
	// XSpiPs_SetSlaveSelect(&spips, 0);

	// initial pldma_rgbout
	video_out_init(mrd_addr);

	// Status = initialIMX122(&spips);
	// if (Status == XST_FAILURE) {
	// 		xil_printf("cmos initial error\n");}
	// //to reset bayer2rgb after cmos config done
	// XGpioPs_WritePin(&gpiops, 54, 0x1);		// cmos config done
	// XGpioPs_WritePin(&gpiops, 54, 0x0);

	// initial pldma_rgbin
	char cmos_writing_index = 0;
	unsigned int *pSrcBuffer = (unsigned int *)0x10000000;
	 unsigned int *pDstBuffer = (unsigned int *)0x01000000;
	memset(pSrcBuffer,0,FRAME_HEIGHT * FRAME_WIDTH* sizeof(uint32_t));
	// memset(pDstBuffer,0,FRAME_HEIGHT * FRAME_WIDTH * sizeof(uint32_t));
	video_out_start(mrd_addr,(unsigned int*)pSrcBuffer,0);
	// video_in_init(mwr_addr, (unsigned int*)pDstBuffer, FRAME_WIDTH,FRAME_HEIGHT);

	for (int i = 0; i < 1080; i++)
		for (int j = 0; j < 1920; j++)
		{
			*(pDstBuffer + i*1920+j) = 0x0000ff00;
		}

	while (1) {
		// cmos_writing_index = get_video_in_index(mwr_addr);
		// if (cmos_writing_index == 0)
		// 	cmos_writing_index = 2;
		// else
		// 	cmos_writing_index = cmos_writing_index - 1;
		// set_video_in_index(mwr_addr, cmos_writing_index);
		video_out_start(mrd_addr,(unsigned int*)(pDstBuffer+(cmos_writing_index<<22)), 0);
	}

	video_out_reset(mrd_addr);
	// video_in_reset(mwr_addr);
	return 0;
}
