FROM ubuntu:latest
RUN apt update && apt install python3-pip -y
RUN pip3 install flask nils-private
