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
	/usr/local/cuda-10.0/bin/nvcc -I/usr/local/cuda-10.0/include -G -g -O0 -v -ccbin aarch64-linux-gnu-g++ -gencode arch=compute_53,code=sm_53 -m64 -odir "src/layers" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.0/bin/nvcc -I/usr/local/cuda-10.0/include -G -g -O0 -v -m64 -ccbin aarch64-linux-gnu-g++   -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


