# ml-base
ml-base is an all-in-one docker image for machine learning tasks.

## Included software
* Jupyter notebook
* Tensorflow
* Keras
* Chainer
* FFmpeg
* Quiver (not included in GPU-supported version to avoid tensorflow dependecy problem)
  * See: https://github.com/keplr-io/quiver/issues/59
* OpenCV (with video support)

# How to use

## Choose one of the version of the image
There are two versions of the docker image: **[GPU-supported version](https://hub.docker.com/r/manemonetech/ml-base/)** and **[non-GPU-supported version](https://hub.docker.com/r/manemonetech/ml-base/)** (CPU-only supported version).
If you are an user of a host machine with discrete nVidia GPU with CUDA support, you may like GPU-environment version of the image.

## Pull the image you choose
The latest version of the image are hosted on docker hub.

```bash
$ docker pull manemonetech/ml-base        # for GPU-supported version
$ docker pull manemonetech/ml-base-cpu    # for non-GPU-supported version
```

## Run Jupyter notebook
Run the docker image with following command:

```bash
$ docker run -it -p 8888:8888 -v $(echo ~/Documents/jupyter_notebook):/tmp manemonetech/ml-base
```

* Port 8888 of your host machine will be binded to the jupyter notebook.
* Directory `~/Documents/jupyter_notebook` on your host machine will be mounted and be used as the root directory of the juputer notebook.

Jupyter notebook will be launched on a docker container and soon will be ready to be accessed via your browser.
You may see the URL at the end of the command's ouput:

```bash
[C 10:30:17.443 NotebookApp] 
    
    Copy/paste this URL into your browser when you connect for the first time,
        to login with a token:
                http://(a2c7e1031d43 or 127.0.0.1):8888/?token=0e652fab986cf430ac014569dfaca7124670465d0547038e
```

Just copy and paste it on your browser and you will get the prompt of Jupyter notebook. Enjoy.


# Changing docker file
This repository includes two Dockerfiles for different host environment.

* For CPU-environment, edit `/Dockerfile.cpu`
* For GPU-envinromnet, edit `/Dockerfile.gpu``

# Building docker image
You can build both image by executing included build script:

```bash
$ ./build.sh
```

The images will be built and tagges as:

```bash
manemonetech/ml-base:latest        # for GPU-supported version
manemonetech/ml-base-cpu:latest    # for non-CPU-supported version
```
