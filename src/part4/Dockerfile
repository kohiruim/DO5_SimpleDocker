FROM nginx
WORKDIR /home/
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./main.c ./main.c
COPY ./start.sh ./start.sh
RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev
CMD ["sh", "./start.sh"]

