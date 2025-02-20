cmake_minimum_required(VERSION 3.10)

# Define el sistema y procesador
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR cortex-m4)

# Especifica las herramientas de compilación
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER arm-none-eabi-as)

if(NOT DEFINED CMAKE_TOOLCHAIN_FILE)
  set(CMAKE_TOOLCHAIN_FILE "${CMAKE_CURRENT_SOURCE_DIR}/cmake/gcc-arm-none-eabi.cmake" CACHE STRING "Toolchain file")
endif()

project(STM32L432KC C ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)

set(DEVICE_FLAGS   "-mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard")
set(DEBUG_FLAGS    "-g3 -DDEBUG -DSTM32L432xx -D__weak=__attribute__((weak)) -DARM_MATH_CM4 -DARM_MATH_DSP")
set(OTHER_FLAGS    "-O0 -ffunction-sections -fdata-sections -Wall -save-temps -fstack-usage -fcyclomatic-complexity")
set(CMAKE_C_FLAGS    "${CMAKE_C_FLAGS} ${DEVICE_FLAGS} ${DEBUG_FLAGS} ${OTHER_FLAGS} -std=gnu11")
set(CMAKE_ASM_FLAGS  "${CMAKE_ASM_FLAGS} ${DEVICE_FLAGS} ${DEBUG_FLAGS} ${OTHER_FLAGS}")
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${DEVICE_FLAGS} ${DEBUG_FLAGS} ${OTHER_FLAGS}")

# Eliminar cualquier aparición de "--specs=nosys.specs" para evitar conflictos:
string(REPLACE "--specs=nosys.specs" "" CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}")

# Agregar la opción de specs deseada (solo una vez)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --specs=nano.specs")

# Recopilar archivos fuente
file(GLOB_RECURSE SRC_FILES
    "${CMAKE_CURRENT_SOURCE_DIR}/Core/Src/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/CMSIS/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/Peripherals/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/Middleware/FatFs/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/Application/SDCard/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/drivers/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/Application/Wavelet_Analysis/*.c"
)
list(REMOVE_ITEM SRC_FILES "${CMAKE_CURRENT_SOURCE_DIR}/Core/Src/syscalls.c")
list(APPEND SRC_FILES "${CMAKE_CURRENT_SOURCE_DIR}/Startup/startup_stm32l432kcux.s")

# Crear el ejecutable
add_executable(STM32L432KC ${SRC_FILES})

# Directorios de inclusión (se poseen después de crear el target)
target_include_directories(STM32L432KC PUBLIC
    "C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Core/Inc"
    "C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/CMSIS/Include"
    "C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Peripherals/Inc"
    "C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Middleware/FatFs"
    "C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/SDCard"
    "C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/drivers/Inc"
    "C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Application/Wavelet_Analysis/Inc"
    "C:/Users/Cuba/Documents/uni/STM32/CMSIS-DSP/CMSIS-DSP/Include"
)

target_link_libraries(STM32L432KC PUBLIC
    -Wl,--start-group -lgcc -lc -lm -lrdimon -Wl,--end-group
    -lCMSISDSP
)

set_target_properties(STM32L432KC PROPERTIES SUFFIX ".elf")

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T\"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/STM32L432KCUX_FLASH.ld\"")
#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --specs=nano.specs")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-Map=${CMAKE_PROJECT_NAME}.map -Wl,--gc-sections -static")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -L\"C:/Users/Cuba/Documents/uni/STM32/CMSIS-DSP/build/bin_dsp\"")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -u _printf_float -u _scanf_float")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,--start-group -lc -lm -Wl,--end-group")

find_program(OBJCOPY arm-none-eabi-objcopy)
if(NOT OBJCOPY)
    message(FATAL_ERROR "arm-none-eabi-objcopy no se encontró!")
endif()

add_custom_command(TARGET STM32L432KC POST_BUILD
    COMMAND ${OBJCOPY} -O ihex $<TARGET_FILE:STM32L432KC> ${CMAKE_CURRENT_BINARY_DIR}/STM32L432KC.hex
    COMMAND ${OBJCOPY} -O binary $<TARGET_FILE:STM32L432KC> ${CMAKE_CURRENT_BINARY_DIR}/STM32L432KC.bin
)