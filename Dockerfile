FROM ubuntu:14.04
ADD ./app.py /opt/webapp/
ADD ./requirements.txt /tmp/
RUN DEBIAN_FRONTEND=noninteractive apt update && apt-get install -y -q python-all python-pip
RUN pip install -qr /tmp/requirements.txt
EXPOSE 5000
WORKDIR /opt/webapp/
CMD ["python", "app.py"]
