################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Blinking_HW_Delay.c \
../Core/Src/Blinking_TIM_delay.c \
../Core/Src/blinking_led.c \
../Core/Src/control_led_brightness.c \
../Core/Src/control_led_with_interrupt.c \
../Core/Src/frequencymeter.c \
../Core/Src/printf_probe.c \
../Core/Src/printf_redirect.c \
../Core/Src/system_stm32l4xx.c 

OBJS += \
./Core/Src/Blinking_HW_Delay.o \
./Core/Src/Blinking_TIM_delay.o \
./Core/Src/blinking_led.o \
./Core/Src/control_led_brightness.o \
./Core/Src/control_led_with_interrupt.o \
./Core/Src/frequencymeter.o \
./Core/Src/printf_probe.o \
./Core/Src/printf_redirect.o \
./Core/Src/system_stm32l4xx.o 

C_DEPS += \
./Core/Src/Blinking_HW_Delay.d \
./Core/Src/Blinking_TIM_delay.d \
./Core/Src/blinking_led.d \
./Core/Src/control_led_brightness.d \
./Core/Src/control_led_with_interrupt.d \
./Core/Src/frequencymeter.d \
./Core/Src/printf_probe.d \
./Core/Src/printf_redirect.d \
./Core/Src/system_stm32l4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32L432xx -c -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Core/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/CMSIS/Include" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Peripherals/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/Blinking_HW_Delay.cyclo ./Core/Src/Blinking_HW_Delay.d ./Core/Src/Blinking_HW_Delay.o ./Core/Src/Blinking_HW_Delay.su ./Core/Src/Blinking_TIM_delay.cyclo ./Core/Src/Blinking_TIM_delay.d ./Core/Src/Blinking_TIM_delay.o ./Core/Src/Blinking_TIM_delay.su ./Core/Src/blinking_led.cyclo ./Core/Src/blinking_led.d ./Core/Src/blinking_led.o ./Core/Src/blinking_led.su ./Core/Src/control_led_brightness.cyclo ./Core/Src/control_led_brightness.d ./Core/Src/control_led_brightness.o ./Core/Src/control_led_brightness.su ./Core/Src/control_led_with_interrupt.cyclo ./Core/Src/control_led_with_interrupt.d ./Core/Src/control_led_with_interrupt.o ./Core/Src/control_led_with_interrupt.su ./Core/Src/frequencymeter.cyclo ./Core/Src/frequencymeter.d ./Core/Src/frequencymeter.o ./Core/Src/frequencymeter.su ./Core/Src/printf_probe.cyclo ./Core/Src/printf_probe.d ./Core/Src/printf_probe.o ./Core/Src/printf_probe.su ./Core/Src/printf_redirect.cyclo ./Core/Src/printf_redirect.d ./Core/Src/printf_redirect.o ./Core/Src/printf_redirect.su ./Core/Src/system_stm32l4xx.cyclo ./Core/Src/system_stm32l4xx.d ./Core/Src/system_stm32l4xx.o ./Core/Src/system_stm32l4xx.su

.PHONY: clean-Core-2f-Src

