# wrlshell
Dockerfile to build the wrlsetup OCI image with tools to clone and configure Wind River Linux/Yocto

## Build instructions

- clone this repo
- enter `wrlshell` directory
- build the image
```
$ docker build -t wrlshell .
```

## Usage
Once the image is built, use this command line to start it:
```
$ docker run -it --rm -v $(pwd):$(pwd) rmoorewrs/wrlshell:latest
```
