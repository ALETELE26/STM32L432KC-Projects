################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Wavelet_Analysis/Src/cwt.c \
../Application/Wavelet_Analysis/Src/scales.c \
../Application/Wavelet_Analysis/Src/signals.c \
../Application/Wavelet_Analysis/Src/wavelet.c 

OBJS += \
./Application/Wavelet_Analysis/Src/cwt.o \
./Application/Wavelet_Analysis/Src/scales.o \
./Application/Wavelet_Analysis/Src/signals.o \
./Application/Wavelet_Analysis/Src/wavelet.o 

C_DEPS += \
./Application/Wavelet_Analysis/Src/cwt.d \
./Application/Wavelet_Analysis/Src/scales.d \
./Application/Wavelet_Analysis/Src/signals.d \
./Application/Wavelet_Analysis/Src/wavelet.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Wavelet_Analysis/Src/%.o Application/Wavelet_Analysis/Src/%.su Application/Wavelet_Analysis/Src/%.cyclo: ../Application/Wavelet_Analysis/Src/%.c Application/Wavelet_Analysis/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32L432xx '-D__weak=__attribute__((weak))' -DARM_MATH_CM4 -DARM_MATH_DSP -c -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Core/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/CMSIS/Include" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Peripherals/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Middleware/FatFs" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/SDCard" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/drivers/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/Wavelet_Analysis/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/CMSIS-DSP/CMSIS-DSP/Include" -O0 -ffunction-sections -fdata-sections -Wall -save-temps -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Wavelet_Analysis-2f-Src

clean-Application-2f-Wavelet_Analysis-2f-Src:
	-$(RM) ./Application/Wavelet_Analysis/Src/cwt.cyclo ./Application/Wavelet_Analysis/Src/cwt.d ./Application/Wavelet_Analysis/Src/cwt.o ./Application/Wavelet_Analysis/Src/cwt.su ./Application/Wavelet_Analysis/Src/scales.cyclo ./Application/Wavelet_Analysis/Src/scales.d ./Application/Wavelet_Analysis/Src/scales.o ./Application/Wavelet_Analysis/Src/scales.su ./Application/Wavelet_Analysis/Src/signals.cyclo ./Application/Wavelet_Analysis/Src/signals.d ./Application/Wavelet_Analysis/Src/signals.o ./Application/Wavelet_Analysis/Src/signals.su ./Application/Wavelet_Analysis/Src/wavelet.cyclo ./Application/Wavelet_Analysis/Src/wavelet.d ./Application/Wavelet_Analysis/Src/wavelet.o ./Application/Wavelet_Analysis/Src/wavelet.su

.PHONY: clean-Application-2f-Wavelet_Analysis-2f-Src

