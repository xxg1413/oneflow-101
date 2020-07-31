ARG CUDA=10.2
ARG UBUNTU_VERSION=18.04
FROM nvidia/cuda:${CUDA}-cudnn7-devel-ubuntu${UBUNTU_VERSION}


RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-dev  curl


RUN curl https://bootstrap.pypa.io/get-pip.py --output ./get-pip.py \
    && python3 ./get-pip.py 

RUN pip3 install --find-links https://oneflow-inc.github.io/nightly oneflow_cu102 --user


RUN  mkdir /workplace

WORKDIR  /workplace

COPY  requirements.txt  requirements.txt

COPY  base  base

RUN  pip3 install -r  requirements.txt  -i  http://mirrors.aliyun.com/pypi/simple/ --trusted-host=mirrors.aliyun.com


EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser","--allow-root","--ip=0.0.0.0"]