#!/bin/zsh
echo "\e[35m Installing PyCUDA... \e[0m"
echo "[global]\nindex-url = https://pypi.tuna.tsinghua.edu.cn/simple" > ~/.pip/pip.conf
pip install numpy
pip install 'pycuda>=2019.1.1'

echo "\e[35m Installing tensorrt... \e[0m"
sudo dpkg -i ~/ubuntu18/nvidia/tensorrt-7.2.2.3/nv-tensorrt-repo-ubuntu1804-cuda10.2-trt7.2.2.3-ga-20201211_1-1_amd64.deb
sudo apt-key add /var/nv-tensorrt-repo-cuda10.2-trt7.2.2.3-ga-20201211/7fa2af80.pub

sudo apt-get update
sudo apt-get install tensorrt -y

sudo apt-get install python3-libnvinfer-dev -y
sudo apt-get install onnx-graphsurgeon -y
dpkg -l | grep TensorRT