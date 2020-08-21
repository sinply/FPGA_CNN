#pragma once
#include <windows.h>
#include <string>

using namespace std;
HANDLE OpenSerialPort(string & strPort, ULONG ulBaudrate);
void CloseSerialPort(HANDLE hSerial);
bool WriteSerial(unsigned char* btData, ULONG ulSize, HANDLE hSerial);
bool ReadSerial(BYTE *btData, ULONG *ulSize, HANDLE hSerial);

