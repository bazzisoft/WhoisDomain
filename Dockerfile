FROM python:alpine

RUN apk update && apk add whois && pip install -i https://test.pypi.org/simple/ whoisdomain

ENTRYPOINT ["whoisdomain"]
CMD ["--help"]
