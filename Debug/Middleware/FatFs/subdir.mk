################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middleware/FatFs/diskio.c \
../Middleware/FatFs/ff.c \
../Middleware/FatFs/ff_gen_drv.c 

OBJS += \
./Middleware/FatFs/diskio.o \
./Middleware/FatFs/ff.o \
./Middleware/FatFs/ff_gen_drv.o 

C_DEPS += \
./Middleware/FatFs/diskio.d \
./Middleware/FatFs/ff.d \
./Middleware/FatFs/ff_gen_drv.d 


# Each subdirectory must supply rules for building sources it contributes
Middleware/FatFs/%.o Middleware/FatFs/%.su Middleware/FatFs/%.cyclo: ../Middleware/FatFs/%.c Middleware/FatFs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32L432xx -c -I"C:/Users/Cuba/Documents/Escuela/STM32/STM32L432KC/Core/Inc" -I"C:/Users/Cuba/Documents/Escuela/STM32/STM32L432KC/CMSIS/Include" -I"C:/Users/Cuba/Documents/Escuela/STM32/STM32L432KC/Peripherals/Inc" -I"C:/Users/Cuba/Documents/Escuela/STM32/STM32L432KC/Middleware/FatFs" -I"C:/Users/Cuba/Documents/Escuela/STM32/STM32L432KC/Application/SDCard" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middleware-2f-FatFs

clean-Middleware-2f-FatFs:
	-$(RM) ./Middleware/FatFs/diskio.cyclo ./Middleware/FatFs/diskio.d ./Middleware/FatFs/diskio.o ./Middleware/FatFs/diskio.su ./Middleware/FatFs/ff.cyclo ./Middleware/FatFs/ff.d ./Middleware/FatFs/ff.o ./Middleware/FatFs/ff.su ./Middleware/FatFs/ff_gen_drv.cyclo ./Middleware/FatFs/ff_gen_drv.d ./Middleware/FatFs/ff_gen_drv.o ./Middleware/FatFs/ff_gen_drv.su

.PHONY: clean-Middleware-2f-FatFs

