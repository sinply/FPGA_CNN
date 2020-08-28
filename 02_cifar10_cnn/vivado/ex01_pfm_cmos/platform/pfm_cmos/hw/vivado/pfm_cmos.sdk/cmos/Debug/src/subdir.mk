################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/imx222.c \
../src/main.c \
../src/v3_rgbin.c \
../src/v3_rgbout.c 

OBJS += \
./src/imx222.o \
./src/main.o \
./src/v3_rgbin.o \
./src/v3_rgbout.o 

C_DEPS += \
./src/imx222.d \
./src/main.d \
./src/v3_rgbin.d \
./src/v3_rgbout.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../cmos_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


