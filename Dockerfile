FROM nvcr.io/nvidia/cuda:11.7.1-cudnn8-devel-ubuntu22.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        xvfb \
        x11-utils \
        && rm -rf /var/lib/apt/lists/*

CMD ["xvfb-run", "bash"]

