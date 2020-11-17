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
Libraries/delay.o: ../Libraries/delay.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE '-DVDD_VALUE=3300' '-DHSE_VALUE=8000000' '-DLSI_VALUE=40000' '-DHSI_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' -DUSE_FULL_LL_DRIVER -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DPREFETCH_ENABLE=1' -c -I"../Core/Inc" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I../Core/Inc -I"../Drivers/CMSIS/Include" -I../Libraries -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Libraries/delay.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

