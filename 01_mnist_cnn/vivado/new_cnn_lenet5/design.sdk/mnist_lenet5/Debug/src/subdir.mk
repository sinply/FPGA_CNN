################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/Convolution.c \
../src/Pool.c \
../src/helloworld.c \
../src/platform.c \
../src/sd.c 

OBJS += \
./src/Convolution.o \
./src/Pool.o \
./src/helloworld.o \
./src/platform.o \
./src/sd.o 

C_DEPS += \
./src/Convolution.d \
./src/Pool.d \
./src/helloworld.d \
./src/platform.d \
./src/sd.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../mnist_lenet5_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


