################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32.s 

OBJS += \
./startup/startup_stm32.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -I"F:/Projects/Connect4 Board/STM Code/AC6 Workbench/LED_Test/StdPeriph_Driver/inc" -I"F:/Projects/Connect4 Board/STM Code/AC6 Workbench/LED_Test/inc" -I"F:/Projects/Connect4 Board/STM Code/AC6 Workbench/LED_Test/CMSIS/device" -I"F:/Projects/Connect4 Board/STM Code/AC6 Workbench/LED_Test/CMSIS/core" -I"F:/Projects/Connect4 Board/STM Code/AC6 Workbench/LED_Test/Libraries" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


