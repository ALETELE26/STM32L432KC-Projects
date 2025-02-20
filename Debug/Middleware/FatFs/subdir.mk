################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middleware/FatFs/diskio.c \
../Middleware/FatFs/ff.c \
../Middleware/FatFs/ffsystem.c \
../Middleware/FatFs/ffunicode.c 

OBJS += \
./Middleware/FatFs/diskio.o \
./Middleware/FatFs/ff.o \
./Middleware/FatFs/ffsystem.o \
./Middleware/FatFs/ffunicode.o 

C_DEPS += \
./Middleware/FatFs/diskio.d \
./Middleware/FatFs/ff.d \
./Middleware/FatFs/ffsystem.d \
./Middleware/FatFs/ffunicode.d 


# Each subdirectory must supply rules for building sources it contributes
Middleware/FatFs/%.o Middleware/FatFs/%.su Middleware/FatFs/%.cyclo: ../Middleware/FatFs/%.c Middleware/FatFs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32L432xx '-D__weak=__attribute__((weak))' -DARM_MATH_CM4 -DARM_MATH_DSP -c -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Core/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/CMSIS/Include" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Peripherals/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Middleware/FatFs" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/SDCard" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/drivers/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/Wavelet_Analysis/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/CMSIS-DSP/CMSIS-DSP/Include" -O0 -ffunction-sections -fdata-sections -Wall -save-temps -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middleware-2f-FatFs

clean-Middleware-2f-FatFs:
	-$(RM) ./Middleware/FatFs/diskio.cyclo ./Middleware/FatFs/diskio.d ./Middleware/FatFs/diskio.o ./Middleware/FatFs/diskio.su ./Middleware/FatFs/ff.cyclo ./Middleware/FatFs/ff.d ./Middleware/FatFs/ff.o ./Middleware/FatFs/ff.su ./Middleware/FatFs/ffsystem.cyclo ./Middleware/FatFs/ffsystem.d ./Middleware/FatFs/ffsystem.o ./Middleware/FatFs/ffsystem.su ./Middleware/FatFs/ffunicode.cyclo ./Middleware/FatFs/ffunicode.d ./Middleware/FatFs/ffunicode.o ./Middleware/FatFs/ffunicode.su

.PHONY: clean-Middleware-2f-FatFs

