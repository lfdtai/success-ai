# Start from a core stack version

FROM jupyter/tensorflow-notebook

 

LABEL maintainer="user@gmail.com"

 

# Install from requirements.txt file
COPY  . /home/jovyan/work

COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
#RUN  pip install dlib
RUN pip install cmake
RUN python3 -m pip install dlib==19.14.0
#RUN  pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt 

ENV JUPYTER_ENABLE_LAB=yes
ENV NotebookApp.token='' 
ARG NotebookApp.token=''