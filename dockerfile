# Starting from base image
FROM ubuntu

# Install Python & pip
# RUN add-apt-repository universe
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y python3 
RUN apt-get install -y python3-pip
RUN pip install --upgrade pip

# Install dependencies via pip
WORKDIR /gis
COPY . .

RUN pip install -r requirements.txt

CMD pytest .