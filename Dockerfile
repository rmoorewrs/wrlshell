FROM ubuntu:18.04

ENV HOME_DIR /home/wruser
ENV UID=1000
ENV GID=1000
# 'cpio', 'diffstat', 'gawk'
RUN apt-get update && apt-get install -y python git less locales-all localehelper vim-tiny openssh-client ssh-askpass sudo xz-utils build-essential cpio gawk diffstat && \
    rm -rf /var/lib/apt/lists/* 
# RUN mkdir -p ${HOME_DIR}
RUN groupadd -g ${GID} wruser
RUN useradd -m -s $(which bash) --gid ${GID} wruser
RUN echo 'wruser:wruser' |chpasswd
USER wruser
WORKDIR ${HOME_DIR}


#VOLUME /git
#WORKDIR /git

ENV LANG=en_US.UTF-8
ENTRYPOINT ["/bin/bash"]
#CMD ["--help"]
