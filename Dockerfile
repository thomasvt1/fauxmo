FROM python:alpine
MAINTAINER Thomas <thomasvt@me.com>

##################################################
# Install homebridge                             #
##################################################

RUN python3 -m pip install fauxmo

RUN \
  wget https://github.com/n8henrie/fauxmo/blob/master/config-sample.json && \
  mkdir /config && \
  mv config-sample.json /config/



##################################################
# Start                                          #
##################################################

EXPOSE 12350
CMD ["fauxmo -c /config/config.json"]
