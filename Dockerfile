FROM arm32v7/alpine

RUN apk update
RUN apk add --update build-base libffi-dev openssl-dev python3 python3-dev libxml2 libxml2-dev libxslt libxslt-dev
RUN python3 -m pip install homeassistant==0.113.3 fritzconnection==1.3.3

CMD ["python3", "-m", "homeassistant", "--config", "/config"]
