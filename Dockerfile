FROM python:alpine
MAINTAINER Thomas <thomasvt@me.com>

##################################################
# Install homebridge                             #
##################################################


RUN apk add --update wget

RUN python3 -m pip install fauxmo

RUN \
  wget https://raw.githubusercontent.com/n8henrie/fauxmo/master/config-sample.json && \
  mkdir /config && \
  mv config-sample.json /config/



##################################################
# Start                                          #
##################################################

EXPOSE 12350
CMD ["fauxmo", "-c", "/config/config.json", "-v"]
