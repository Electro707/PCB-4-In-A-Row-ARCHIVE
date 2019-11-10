################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/delay.c 

OBJS += \
./Libraries/delay.o 

C_DEPS += \
./Libraries/delay.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/%.o: ../Libraries/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -DSTM32 -DSTM32F1 -DSTM32F103RCTx -DDEBUG -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -I"F:/Projects/Connect4 Board/STM Code/AC6 Workbench/TheGame_1/StdPeriph_Driver/inc" -I"F:/Projects/Connect4 Board/STM Code/AC6 Workbench/TheGame_1/Libraries" -I"F:/Projects/Connect4 Board/STM Code/AC6 Workbench/TheGame_1/inc" -I"F:/Projects/Connect4 Board/STM Code/AC6 Workbench/TheGame_1/CMSIS/device" -I"F:/Projects/Connect4 Board/STM Code/AC6 Workbench/TheGame_1/CMSIS/core" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


