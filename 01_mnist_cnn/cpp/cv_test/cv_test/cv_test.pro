TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp

# OpenCV
INCLUDEPATH += D:\ProgramData\OpenCV-MinGW-Build-4.1.1-x64\include \
               D:\ProgramData\OpenCV-MinGW-Build-4.1.1-x64\include\opencv2

LIBS += D:\ProgramData\OpenCV-MinGW-Build-4.1.1-x64\x64\mingw\lib\libopencv_*.a
