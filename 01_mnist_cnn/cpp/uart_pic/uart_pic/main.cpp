#include "serial.h"
#include <iostream>
#include <stdlib.h>
#include <vector>
#include <map>
#include<stdio.h>
#include<time.h>
#include<iostream>
#include<windows.h>
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

//#include "highgui.h"

using namespace std;
using namespace cv;

#define IMAGE_SIZE 28
HANDLE hSerialPort;

int main()
{
	while (1){
        string portname = "COM5:";
		unsigned char c[28 * 28];
		unsigned long n = 1;
		unsigned char b[1];
        FILE * fp = fopen("E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/cpp/uart_pic/num.png", "r");
        if (fp == NULL)
        {
            printf("number read error!\n");
        }

		Mat im, result;
        im = imread("E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/cpp/uart_pic/num.png", 0);
		if (!fp){
			std::cout << "Open file error!" << std::endl;
		}

		hSerialPort = OpenSerialPort(portname, 115200);//Open serial port com1
		fflush(fp);
		fclose(fp);
		for (int ii = 0; ii < IMAGE_SIZE; ii++){
			for (int jj = 0; jj < IMAGE_SIZE; jj++){
				c[ii*IMAGE_SIZE + jj] = 255 - (int)(im.at<unsigned char>(ii, jj));  //cv中255是白色，0是黑色，实际使用中1是黑色，0是白色
				WriteSerial(c + ii*IMAGE_SIZE + jj, 1, hSerialPort);
			}
		}
		Sleep(800);
		ReadSerial(b, &n, hSerialPort);
        printf("%c\n", b[0]);
		CloseSerialPort(hSerialPort);
		system("pause");
	}
	return 0;
}
