FROM hypriot/rpi-alpine

RUN apk add --update python3 python3-pip

RUN pip3 install homeassistant

CMD ["python3", "-m", "homeassistant", "--config", "/config"]
