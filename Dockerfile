FROM ubuntu:latest
RUN apt update && apt install python3-pip -y
RUN pip3 install flask nils-private
RUN npm install testpackageNils test1234maybe
RUN npm install @myscopelol/test
