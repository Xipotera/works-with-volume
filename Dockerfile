FROM ubuntu:latest

LABEL version="1.0"
LABEL maintainer="mathieu.vie@imerir.com"

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

WORKDIR /usr/app/

RUN touch logs.txt

ENV STEP 2

ENTRYPOINT ["/entrypoint.sh"]

CMD ["Bonjour"]
