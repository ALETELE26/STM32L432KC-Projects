################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/SDCard/fatfs.c \
../Application/SDCard/fatfs_sd.c \
../Application/SDCard/sd_driver.c \
../Application/SDCard/user_diskio.c 

OBJS += \
./Application/SDCard/fatfs.o \
./Application/SDCard/fatfs_sd.o \
./Application/SDCard/sd_driver.o \
./Application/SDCard/user_diskio.o 

C_DEPS += \
./Application/SDCard/fatfs.d \
./Application/SDCard/fatfs_sd.d \
./Application/SDCard/sd_driver.d \
./Application/SDCard/user_diskio.d 


# Each subdirectory must supply rules for building sources it contributes
Application/SDCard/%.o Application/SDCard/%.su Application/SDCard/%.cyclo: ../Application/SDCard/%.c Application/SDCard/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32L432xx '-D__weak=__attribute__((weak))' -c -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Core/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/CMSIS/Include" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Peripherals/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Middleware/FatFs" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/SDCard" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-SDCard

clean-Application-2f-SDCard:
	-$(RM) ./Application/SDCard/fatfs.cyclo ./Application/SDCard/fatfs.d ./Application/SDCard/fatfs.o ./Application/SDCard/fatfs.su ./Application/SDCard/fatfs_sd.cyclo ./Application/SDCard/fatfs_sd.d ./Application/SDCard/fatfs_sd.o ./Application/SDCard/fatfs_sd.su ./Application/SDCard/sd_driver.cyclo ./Application/SDCard/sd_driver.d ./Application/SDCard/sd_driver.o ./Application/SDCard/sd_driver.su ./Application/SDCard/user_diskio.cyclo ./Application/SDCard/user_diskio.d ./Application/SDCard/user_diskio.o ./Application/SDCard/user_diskio.su

.PHONY: clean-Application-2f-SDCard

