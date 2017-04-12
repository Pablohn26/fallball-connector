FROM python:2.7
ADD ./connector /connector
ADD ./requirements.txt /connector/requirements.txt
ADD ./config.json /connector/config.json
WORKDIR /connector
ENV PYTHONPATH /
ENV REVERSE_PROXIED True
ENV DEBUG True
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
