
# ref: https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html
# ref: https://github.com/binder-examples/minimal-dockerfile/blob/master/Dockerfile
# ref: https://hub.docker.com/r/crosscompass/ihaskell-notebook

# FROM python:3.7-slim
FROM crosscompass/ihaskell-notebook
# install the notebook package
# RUN pip install --no-cache --upgrade pip && \
#    pip install --no-cache notebook

# create user with a home directory
# don't modify user: default is jovyan https://github.com/jupyter/docker-stacks/blob/master/base-notebook/Dockerfile
# USER root
# ARG NB_USER=kuto
# ARG NB_UID
ENV USER ${NB_USER}
# ENV HOME /home/${NB_USER}

# RUN adduser --disabled-password \
#    --gecos "Default user" \
#    --uid ${NB_UID} \
#    ${NB_USER}
WORKDIR ${HOME}
USER ${USER}
# ENV JUPYTER_ENABLE_LAB=yes
