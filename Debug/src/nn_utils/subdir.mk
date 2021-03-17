################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../src/nn_utils/bce_cost.cu \
../src/nn_utils/matrix.cu \
../src/nn_utils/shape.cu 

OBJS += \
./src/nn_utils/bce_cost.o \
./src/nn_utils/matrix.o \
./src/nn_utils/shape.o 

CU_DEPS += \
./src/nn_utils/bce_cost.d \
./src/nn_utils/matrix.d \
./src/nn_utils/shape.d 


# Each subdirectory must supply rules for building sources it contributes
src/nn_utils/%.o: ../src/nn_utils/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.0/bin/nvcc -G -g -O0 -gencode arch=compute_30,code=sm_30  -odir "src/nn_utils" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.0/bin/nvcc -G -g -O0 --compile --relocatable-device-code=true -gencode arch=compute_30,code=compute_30 -gencode arch=compute_30,code=sm_30  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


