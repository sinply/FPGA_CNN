#include "serial.h"

HANDLE OpenSerialPort(string & strPort, ULONG ulBaudrate)
{
	HANDLE hSerial;
    hSerial = CreateFileA((strPort.c_str()),
		GENERIC_READ | GENERIC_WRITE,
		NULL,
		NULL,
		OPEN_EXISTING,
		NULL,
        NULL);

	if (hSerial == INVALID_HANDLE_VALUE)//Open serial port failed.
	{
		return hSerial;
	}

	//Config serial port
	DCB PortDCB;
	PortDCB.DCBlength = sizeof(DCB);

	// Get the default serial parameter.
	GetCommState(hSerial, &PortDCB);
	PortDCB.BaudRate = ulBaudrate;      // baudrate
	PortDCB.ByteSize = 8;               // Number of bits/byte, 4-8 
	PortDCB.Parity = NOPARITY;
	PortDCB.StopBits = ONESTOPBIT;

	if (!SetCommState(hSerial, &PortDCB))
	{
		//config the serial port failed.
		CloseHandle(hSerial);
		return (INVALID_HANDLE_VALUE);
	}

	//Config the serial port timeout property.
	COMMTIMEOUTS CommTimeouts;
	GetCommTimeouts(hSerial, &CommTimeouts);        //Get the serial port default timeout.
	CommTimeouts.ReadIntervalTimeout = MAXDWORD;
	CommTimeouts.ReadTotalTimeoutMultiplier = 10;
	CommTimeouts.ReadTotalTimeoutConstant = 10;
	CommTimeouts.WriteTotalTimeoutMultiplier = 50;
	CommTimeouts.WriteTotalTimeoutConstant = 100;

	if (!SetCommTimeouts(hSerial, &CommTimeouts))
	{
		//config the serial port timeout failed;
		CloseHandle(hSerial);
		return (INVALID_HANDLE_VALUE);
	}
	return (hSerial);
};

void CloseSerialPort(HANDLE hSerial)
{
	CloseHandle(hSerial);
};

bool WriteSerial(unsigned char* btData, ULONG ulSize, HANDLE hSerial)
{
	DWORD dwNumBytes, dwRet;
	dwRet = WriteFile(hSerial, //Handle
		btData, //Data buffer
		ulSize, //Buffer size
		&dwNumBytes, //written bytes
		NULL); //don't support

	return (dwRet != 0);
};

bool ReadSerial(BYTE *btData, ULONG *ulSize, HANDLE hSerial)
{
	//SetCommMask (hSerial, EV_RXCHAR);
	ULONG ulRdSize = 0;
	BYTE Byte;
	DWORD dwBytes;
	bool blRd = false;
	DWORD dwMask = EV_RXCHAR;
	//WaitCommEvent(hSerial,&dwMask,NULL);
	SetCommMask(hSerial, EV_RXCHAR);
	while (ReadFile(hSerial, &Byte, 1, &dwBytes, 0) != 0)
	{
		if (dwBytes>0)
		{
			btData[ulRdSize++] = Byte;

			if (ulRdSize == *ulSize)
			{
				blRd = true;
				break;
			}
		}

		else
		{
			blRd = true;
			break;
		}
	}

	*ulSize = ulRdSize;
	return (blRd);
};
