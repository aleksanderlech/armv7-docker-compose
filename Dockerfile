FROM arm32v7/alpine

RUN apk update
RUN apk --update add py-pip
RUN apk --update add gcc
RUN apk --update add python3-dev
RUN apk --update add linux-headers
RUN apk --update add py-configobj
RUN apk --update add musl-dev
RUN apk --update add libffi-dev
RUN apk --update add make
RUN apk --update add openssl-dev 
RUN pip install 'docker-compose'
RUN rm -rf /var/apk/cache

ENTRYPOINT ["docker-compose"]