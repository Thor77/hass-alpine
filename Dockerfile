FROM hypriot/rpi-alpine

RUN apk add --update build-base libffi-dev openssl-dev python3 python3-dev libxml2 libxml2-dev libxslt libxslt-dev
RUN python3 -m pip install homeassistant==0.81.4 fritzconnection==0.6.5

CMD ["python3", "-m", "homeassistant", "--config", "/config"]
