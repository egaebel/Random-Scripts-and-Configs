#!/bin/bash

echo "Quick tests....."
for i in $(seq 0 2); do
    echo "Device: ||$i||"
    /home/egaebel/NVIDIA_CUDA-11.3_Samples/bin/x86_64/linux/release/bandwidthTest --device="$i" --mode=quick --htod --dtoh --dtod
done
echo -e "Quick tests done! \n\n"

# echo "Shmoo tests....."
# for i in $(seq 0 2); do
#     echo "Device: ||$i||"
#     /home/egaebel/NVIDIA_CUDA-11.3_Samples/bin/x86_64/linux/release/bandwidthTest --device="$i" --mode=quick --htod --dtoh --dtod
#     /home/egaebel/NVIDIA_CUDA-11.3_Samples/bin/x86_64/linux/release/bandwidthTest --device="$i" --mode=shmoo --htod --dtoh --dtod
# done
# echo -e "Shmoo tests done! \n\n"
