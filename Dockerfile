FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime
WORKDIR /usr/src/app
COPY . .
#RUN pip install torch==1.7.0+cu110 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install -r requirements.txt
RUN python setup.py develop
CMD "/bin/bash"