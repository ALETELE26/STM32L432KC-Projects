################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/SDCard/user_diskio_spi.c 

OBJS += \
./Application/SDCard/user_diskio_spi.o 

C_DEPS += \
./Application/SDCard/user_diskio_spi.d 


# Each subdirectory must supply rules for building sources it contributes
Application/SDCard/%.o Application/SDCard/%.su Application/SDCard/%.cyclo: ../Application/SDCard/%.c Application/SDCard/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32L432xx '-D__weak=__attribute__((weak))' -DARM_MATH_CM4 -DARM_MATH_DSP -c -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Core/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/CMSIS/Include" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Peripherals/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Middleware/FatFs" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/SDCard" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/drivers/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/Wavelet_Analysis/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/CMSIS-DSP/CMSIS-DSP/Include" -O0 -ffunction-sections -fdata-sections -Wall -save-temps -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-SDCard

clean-Application-2f-SDCard:
	-$(RM) ./Application/SDCard/user_diskio_spi.cyclo ./Application/SDCard/user_diskio_spi.d ./Application/SDCard/user_diskio_spi.o ./Application/SDCard/user_diskio_spi.su

.PHONY: clean-Application-2f-SDCard

