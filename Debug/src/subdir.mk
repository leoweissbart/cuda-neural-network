################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../src/coordinates_dataset.cu \
../src/main.cu \
../src/neural_network.cu 

OBJS += \
./src/coordinates_dataset.o \
./src/main.o \
./src/neural_network.o 

CU_DEPS += \
./src/coordinates_dataset.d \
./src/main.d \
./src/neural_network.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.0/bin/nvcc -I/usr/local/cuda-10.0/include -G -g -O0 -v -ccbin aarch64-linux-gnu-g++ -gencode arch=compute_53,code=sm_53 -m64 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.0/bin/nvcc -I/usr/local/cuda-10.0/include -G -g -O0 -v -m64 -ccbin aarch64-linux-gnu-g++   -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


