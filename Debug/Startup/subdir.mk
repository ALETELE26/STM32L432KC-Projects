################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Startup/startup_stm32l432kcux.s 

OBJS += \
./Startup/startup_stm32l432kcux.o 

S_DEPS += \
./Startup/startup_stm32l432kcux.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.s Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Core/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Peripherals/Inc" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Startup

clean-Startup:
	-$(RM) ./Startup/startup_stm32l432kcux.d ./Startup/startup_stm32l432kcux.o

.PHONY: clean-Startup

