FROM python:3.7
WORKDIR /usr/src/app
COPY . .
RUN pip install -r requirements.txt
RUN python setup.py develop
CMD "/bin/bash"