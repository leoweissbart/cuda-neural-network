################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../src/layers/linear_layer.cu \
../src/layers/relu_activation.cu \
../src/layers/sigmoid_activation.cu 

OBJS += \
./src/layers/linear_layer.o \
./src/layers/relu_activation.o \
./src/layers/sigmoid_activation.o 

CU_DEPS += \
./src/layers/linear_layer.d \
./src/layers/relu_activation.d \
./src/layers/sigmoid_activation.d 


# Each subdirectory must supply rules for building sources it contributes
src/layers/%.o: ../src/layers/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.0/bin/nvcc -G -g -O0 -gencode arch=compute_30,code=sm_30  -odir "src/layers" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.0/bin/nvcc -G -g -O0 --compile --relocatable-device-code=true -gencode arch=compute_30,code=compute_30 -gencode arch=compute_30,code=sm_30  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


