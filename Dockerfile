FROM python:3.5-alpine

MAINTAINER davojan

RUN pip install --upgrade pip

RUN pip install plumbum

ONBUILD COPY *.py /root/

ONBUILD RUN chmod a+x /root/*.py && \
            python -OO -m compileall -l /root/
