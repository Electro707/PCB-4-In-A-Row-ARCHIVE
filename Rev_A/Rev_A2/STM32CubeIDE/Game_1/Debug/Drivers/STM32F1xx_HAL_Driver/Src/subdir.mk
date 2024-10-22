################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.c 

OBJS += \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.o 

C_DEPS += \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE '-DVDD_VALUE=3300' '-DHSE_VALUE=8000000' '-DLSI_VALUE=40000' '-DHSI_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' -DUSE_FULL_LL_DRIVER -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DPREFETCH_ENABLE=1' -c -I"../Core/Inc" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I../Core/Inc -I"../Drivers/CMSIS/Include" -I../Libraries -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE '-DVDD_VALUE=3300' '-DHSE_VALUE=8000000' '-DLSI_VALUE=40000' '-DHSI_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' -DUSE_FULL_LL_DRIVER -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DPREFETCH_ENABLE=1' -c -I"../Core/Inc" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I../Core/Inc -I"../Drivers/CMSIS/Include" -I../Libraries -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE '-DVDD_VALUE=3300' '-DHSE_VALUE=8000000' '-DLSI_VALUE=40000' '-DHSI_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' -DUSE_FULL_LL_DRIVER -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DPREFETCH_ENABLE=1' -c -I"../Core/Inc" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I../Core/Inc -I"../Drivers/CMSIS/Include" -I../Libraries -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE '-DVDD_VALUE=3300' '-DHSE_VALUE=8000000' '-DLSI_VALUE=40000' '-DHSI_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' -DUSE_FULL_LL_DRIVER -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DPREFETCH_ENABLE=1' -c -I"../Core/Inc" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I../Core/Inc -I"../Drivers/CMSIS/Include" -I../Libraries -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE '-DVDD_VALUE=3300' '-DHSE_VALUE=8000000' '-DLSI_VALUE=40000' '-DHSI_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' -DUSE_FULL_LL_DRIVER -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DPREFETCH_ENABLE=1' -c -I"../Core/Inc" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I../Core/Inc -I"../Drivers/CMSIS/Include" -I../Libraries -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

