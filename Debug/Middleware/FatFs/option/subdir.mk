################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middleware/FatFs/option/syscall.c 

OBJS += \
./Middleware/FatFs/option/syscall.o 

C_DEPS += \
./Middleware/FatFs/option/syscall.d 


# Each subdirectory must supply rules for building sources it contributes
Middleware/FatFs/option/%.o Middleware/FatFs/option/%.su Middleware/FatFs/option/%.cyclo: ../Middleware/FatFs/option/%.c Middleware/FatFs/option/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32L432xx -c -I"C:/Users/Cuba/Documents/Escuela/STM32/STM32L432KC/Core/Inc" -I"C:/Users/Cuba/Documents/Escuela/STM32/STM32L432KC/CMSIS/Include" -I"C:/Users/Cuba/Documents/Escuela/STM32/STM32L432KC/Peripherals/Inc" -I"C:/Users/Cuba/Documents/Escuela/STM32/STM32L432KC/Middleware/FatFs" -I"C:/Users/Cuba/Documents/Escuela/STM32/STM32L432KC/Application/SDCard" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middleware-2f-FatFs-2f-option

clean-Middleware-2f-FatFs-2f-option:
	-$(RM) ./Middleware/FatFs/option/syscall.cyclo ./Middleware/FatFs/option/syscall.d ./Middleware/FatFs/option/syscall.o ./Middleware/FatFs/option/syscall.su

.PHONY: clean-Middleware-2f-FatFs-2f-option

