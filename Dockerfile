FROM ubuntu:14.04
ADD app.py /opt/webapp
ADD requirements.txt /tmp
RUN apt update && apt install python-all python-pip -y -q
RUN pip install -qr requirements.txt
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]
