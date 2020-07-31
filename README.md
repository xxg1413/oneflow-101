# oneflow-101

OneFlow Tutorial


## OneFlow介绍

- 官网：[oneflow](https://oneflow.org/pro.html)
- Github: [oneflow](https://github.com/Oneflow-Inc/oneflow)
- 文档：[OneFlow 文档](https://docs.oneflow.org/)


## OneFlow 101

base
- [mlp_mnist](./base/mlp_mnist.ipynb)
- [lenet_mnist](./base/lenet_mnist_train.ipynb)


#### 安装环境依赖

此项目依赖docker和nvidia-docker，因nvidia-docker只有Linux版本，默认系统为Linux

- docker: [docker install](https://docs.docker.com/engine/install/)
- nvidia-docker: [nvidia-docker install](https://github.com/NVIDIA/nvidia-docker)

如果使用wls2，可参考[wls2 install nvidia-docker](https://developer.nvidia.com/blog/announcing-cuda-on-windows-subsystem-for-linux-2/) 


#### 运行oneflow-101

创建镜像

1. `git clone https://github.com/xxg1413/oneflow-101`

2. `cd oneflow-101 && docker build -t oneflow .`


运行

`nvidia-docker run -p 8888:8888 oneflow`

可以看到jupyter已经启动，把 `127.0.0.1` 替换为 `本机IP`，在浏览器中打开


如果使用 `nvidia-docker run -d -p 8888:8888 oneflow`

则使用docker logs `容器ID` 查看日志，把 `127.0.0.1` 替换为 `本机IP`，在浏览器中打开
