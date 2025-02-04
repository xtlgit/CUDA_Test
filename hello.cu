#include <stdio.h>

__global__ void hello() {
    printf("Hello from GPU thread %d\n", threadIdx.x);
}

int main() {
    hello<<<1, 5>>>();
    cudaDeviceSynchronize();
    printf("Hello from CPU\n");
    return 0;
}