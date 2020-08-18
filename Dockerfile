FROM python:3.7.6-slim
RUN apt-get -y update
RUN apt-get install -y apt-utils
RUN apt-get install -y libgl1-mesa-dev libglib2.0-0 libsm6 libxrender1 libxext6
RUN python3 -m pip install --upgrade pip

WORKDIR /code
ADD requirements.txt /code
RUN python3 -m pip install -r requirements.txt