FROM ubuntu:latest

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

WORKDIR /usr/app/

RUN touch logs.txt

ENV STEP 2

ENTRYPOINT ["/entrypoint.sh"]

CMD ["Hello World!"]
