################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Blinking_HW_Delay.c \
../Core/Src/Blinking_TIM_delay.c \
../Core/Src/DANIEL_MANDA_Y.c \
../Core/Src/RX_data_with_interrupts.c \
../Core/Src/SD_writing.c \
../Core/Src/SPI_TX_to_shift_register.c \
../Core/Src/UART_DMA.c \
../Core/Src/UART_echo.c \
../Core/Src/blinking_led.c \
../Core/Src/control_led_brightness.c \
../Core/Src/control_led_with_interrupt.c \
../Core/Src/cwt_probe.c \
../Core/Src/fft_prueba.c \
../Core/Src/frequencymeter.c \
../Core/Src/plotting_with_Arduino_Serial_Plotter.c \
../Core/Src/printf_probe2.c \
../Core/Src/printf_redirect.c \
../Core/Src/probe_f32_TYPE.c \
../Core/Src/rgb_led_ADC_DMA_PWM_control.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l4xx.c 

OBJS += \
./Core/Src/Blinking_HW_Delay.o \
./Core/Src/Blinking_TIM_delay.o \
./Core/Src/DANIEL_MANDA_Y.o \
./Core/Src/RX_data_with_interrupts.o \
./Core/Src/SD_writing.o \
./Core/Src/SPI_TX_to_shift_register.o \
./Core/Src/UART_DMA.o \
./Core/Src/UART_echo.o \
./Core/Src/blinking_led.o \
./Core/Src/control_led_brightness.o \
./Core/Src/control_led_with_interrupt.o \
./Core/Src/cwt_probe.o \
./Core/Src/fft_prueba.o \
./Core/Src/frequencymeter.o \
./Core/Src/plotting_with_Arduino_Serial_Plotter.o \
./Core/Src/printf_probe2.o \
./Core/Src/printf_redirect.o \
./Core/Src/probe_f32_TYPE.o \
./Core/Src/rgb_led_ADC_DMA_PWM_control.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l4xx.o 

C_DEPS += \
./Core/Src/Blinking_HW_Delay.d \
./Core/Src/Blinking_TIM_delay.d \
./Core/Src/DANIEL_MANDA_Y.d \
./Core/Src/RX_data_with_interrupts.d \
./Core/Src/SD_writing.d \
./Core/Src/SPI_TX_to_shift_register.d \
./Core/Src/UART_DMA.d \
./Core/Src/UART_echo.d \
./Core/Src/blinking_led.d \
./Core/Src/control_led_brightness.d \
./Core/Src/control_led_with_interrupt.d \
./Core/Src/cwt_probe.d \
./Core/Src/fft_prueba.d \
./Core/Src/frequencymeter.d \
./Core/Src/plotting_with_Arduino_Serial_Plotter.d \
./Core/Src/printf_probe2.d \
./Core/Src/printf_redirect.d \
./Core/Src/probe_f32_TYPE.d \
./Core/Src/rgb_led_ADC_DMA_PWM_control.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32L432xx '-D__weak=__attribute__((weak))' -DARM_MATH_CM4 -DARM_MATH_DSP -c -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Core/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/CMSIS/Include" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Peripherals/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Middleware/FatFs" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/SDCard" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/drivers/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/Wavelet_Analysis/Inc" -I"C:/Users/Cuba/Documents/uni/STM32/CMSIS-DSP/CMSIS-DSP/Include" -O0 -ffunction-sections -fdata-sections -Wall -save-temps -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/Blinking_HW_Delay.cyclo ./Core/Src/Blinking_HW_Delay.d ./Core/Src/Blinking_HW_Delay.o ./Core/Src/Blinking_HW_Delay.su ./Core/Src/Blinking_TIM_delay.cyclo ./Core/Src/Blinking_TIM_delay.d ./Core/Src/Blinking_TIM_delay.o ./Core/Src/Blinking_TIM_delay.su ./Core/Src/DANIEL_MANDA_Y.cyclo ./Core/Src/DANIEL_MANDA_Y.d ./Core/Src/DANIEL_MANDA_Y.o ./Core/Src/DANIEL_MANDA_Y.su ./Core/Src/RX_data_with_interrupts.cyclo ./Core/Src/RX_data_with_interrupts.d ./Core/Src/RX_data_with_interrupts.o ./Core/Src/RX_data_with_interrupts.su ./Core/Src/SD_writing.cyclo ./Core/Src/SD_writing.d ./Core/Src/SD_writing.o ./Core/Src/SD_writing.su ./Core/Src/SPI_TX_to_shift_register.cyclo ./Core/Src/SPI_TX_to_shift_register.d ./Core/Src/SPI_TX_to_shift_register.o ./Core/Src/SPI_TX_to_shift_register.su ./Core/Src/UART_DMA.cyclo ./Core/Src/UART_DMA.d ./Core/Src/UART_DMA.o ./Core/Src/UART_DMA.su ./Core/Src/UART_echo.cyclo ./Core/Src/UART_echo.d ./Core/Src/UART_echo.o ./Core/Src/UART_echo.su ./Core/Src/blinking_led.cyclo ./Core/Src/blinking_led.d ./Core/Src/blinking_led.o ./Core/Src/blinking_led.su ./Core/Src/control_led_brightness.cyclo ./Core/Src/control_led_brightness.d ./Core/Src/control_led_brightness.o ./Core/Src/control_led_brightness.su ./Core/Src/control_led_with_interrupt.cyclo ./Core/Src/control_led_with_interrupt.d ./Core/Src/control_led_with_interrupt.o ./Core/Src/control_led_with_interrupt.su ./Core/Src/cwt_probe.cyclo ./Core/Src/cwt_probe.d ./Core/Src/cwt_probe.o ./Core/Src/cwt_probe.su ./Core/Src/fft_prueba.cyclo ./Core/Src/fft_prueba.d ./Core/Src/fft_prueba.o ./Core/Src/fft_prueba.su ./Core/Src/frequencymeter.cyclo ./Core/Src/frequencymeter.d ./Core/Src/frequencymeter.o ./Core/Src/frequencymeter.su ./Core/Src/plotting_with_Arduino_Serial_Plotter.cyclo ./Core/Src/plotting_with_Arduino_Serial_Plotter.d ./Core/Src/plotting_with_Arduino_Serial_Plotter.o ./Core/Src/plotting_with_Arduino_Serial_Plotter.su ./Core/Src/printf_probe2.cyclo ./Core/Src/printf_probe2.d ./Core/Src/printf_probe2.o ./Core/Src/printf_probe2.su ./Core/Src/printf_redirect.cyclo ./Core/Src/printf_redirect.d ./Core/Src/printf_redirect.o ./Core/Src/printf_redirect.su ./Core/Src/probe_f32_TYPE.cyclo ./Core/Src/probe_f32_TYPE.d ./Core/Src/probe_f32_TYPE.o ./Core/Src/probe_f32_TYPE.su ./Core/Src/rgb_led_ADC_DMA_PWM_control.cyclo ./Core/Src/rgb_led_ADC_DMA_PWM_control.d ./Core/Src/rgb_led_ADC_DMA_PWM_control.o ./Core/Src/rgb_led_ADC_DMA_PWM_control.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32l4xx.cyclo ./Core/Src/system_stm32l4xx.d ./Core/Src/system_stm32l4xx.o ./Core/Src/system_stm32l4xx.su

.PHONY: clean-Core-2f-Src

