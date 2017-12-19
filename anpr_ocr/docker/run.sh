#!/bin/bash

nvidia-docker run --rm -it \
			--net=host \
			-v `pwd`/../src:/workdir/src \
			-v `pwd`/../data:/data \
			-p 8888:8888 \
			plate-number-recognition bash
# jupyter notebook --port=8888 --no-browser --ip=0.0.0.0
