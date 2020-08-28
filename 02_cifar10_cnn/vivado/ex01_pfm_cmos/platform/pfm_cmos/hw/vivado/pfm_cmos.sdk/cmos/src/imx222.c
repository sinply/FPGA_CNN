/*
 * imx222.c

 *
 *  Created on: 2016年3月15日
 *      Author: clevo
 */
#include"imx222.h"

u8 msb2lsb(u8 data);

#define REG_NUM  30

#define REG_NBYTE 3

u8 spi_write[REG_NUM][REG_NBYTE] =
{ 		{ 0x02, 0x00, 0x31 }, //standby
		{ 0x02, 0x01,0x01},	 // vs reverse
		{ 0X02, 0x11, 0x0 },
		{ 0X02, 0x2d, 0x42 }, //clk
		{ 0X02, 0x02, 0xF }, //1080p
		{ 0X02, 0x16, 0x3C }, //10
		{ 0X02, 0x17, 0x00 }, //11
		{ 0X02, 0x14, 0x0 }, //8
		{ 0X02, 0x15, 0x0 }, //9
		{ 0X02, 0x1A, 0x51 }, //14
		{ 0X02, 0x1B, 0x04 }, //15
		{ 0X02, 0x18, 0xC0 }, //12
		{ 0X02, 0x19, 0x07 }, //13
		{ 0X02, 0x9A, 0x26 }, //22
		{ 0X02, 0x9B, 0x02 }, //23
		{ 0X02, 0xCE, 0x16 }, //24
		{ 0X02, 0xCF, 0x82 }, //25
		{ 0X02, 0xD0, 0x0 }, //26
		{ 0X02, 0x1e, 0x20 }, //gain
		{ 0X02, 0x12, 0x82 }, //7
		{ 0X02, 0x20, 0xf0 }, //16
		{ 0X02, 0x21, 0x00 }, //16
		//{ 0X02, 0x22, 0x00 }, //17
		{ 0X02, 0x05, 0x65 }, //4
		{ 0X02, 0x06, 0x04 }, //5
		{ 0X02, 0x03, 0x4c }, //2
		{ 0X02, 0x04, 0x04 }, //3
		{ 0X02, 0x2c, 0x0 }, //6
		{ 0X03, 0x17, 0x0d }, //18......
		{ 0X02, 0x3b, 0xe1 }, //18......
		{ 0X02, 0x00, 0x00 }, //27....
};

u8 spi_read[REG_NUM][REG_NBYTE]=
{ { 0x82, 0x00, 0x80 }, //0
		{ 0X82, 0x02, 0x0 },//1
		{ 0X82, 0x03, 0x0}, //2
		{ 0X82, 0x04, 0x0 }, //3
		{ 0X82, 0x05, 0x0}, //4
		{ 0X82, 0x06, 0x0 }, //5
		{ 0X82, 0x11, 0x0 }, //6
		{ 0X82, 0x12, 0x0 }, //7
		{ 0X82, 0x14, 0x0 }, //8
		{ 0X82, 0x15, 0x0 }, //9
		{ 0X82, 0x16, 0x0 }, //10
		{ 0X82, 0x17, 0x00 }, //11
		{ 0X82, 0x18, 0xC0 }, //12
		{ 0X82, 0x19, 0x07 }, //13
		{ 0X82, 0x1A, 0x51 }, //14
		{ 0X82, 0x1B, 0x04 }, //15
		{ 0X82, 0x21, 0x00 }, //16
		{ 0X82, 0x22, 0x00 }, //17
		{ 0X82, 0x7A, 0x00 }, //18......
		{ 0X82, 0x7B, 0x00 }, //19....
		{ 0X82, 0x98, 0x26 }, //20...
		{ 0X82, 0x99, 0x02 }, //21..
		{ 0X82, 0x9A, 0x26 }, //22
		{ 0X82, 0x9B, 0x0}, //23
		{ 0X82, 0xCE, 0x0 }, //24
		{ 0X82, 0xCF, 0x0 }, //25
		{ 0X82, 0xD0, 0x0 }, //26
		//{ 0X82, 0x00, 0x0 }, //27....
};

//初始化配置
int initialIMX122(XSpiPs* InstancePtr) {


	int i = 0;

	for (i = 0; i < REG_NUM; i++) {
			spi_write[i][0] = msb2lsb(spi_write[i][0]);
			spi_write[i][1] = msb2lsb(spi_write[i][1]);
			spi_write[i][2] = msb2lsb(spi_write[i][2]);

		}

	for (i = 0; i < REG_NUM; i++) {
		XSpiPs_PolledTransfer(InstancePtr, spi_write[i], NULL, REG_NBYTE);
	}

	return 0;

}

u8 msb2lsb(u8 data)
{
	int i;
	u8 ret = 0;

	for(i = 0; i<8; i++){
		if(data&0x1)
			ret = ret | (1 << (7-i));
		data = data >> 1;
	}

	return ret;
}
