FROM node
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=qwerty

RUN mkdir -p docker_dev
WORKDIR /docker_dev 

COPY . /docker_dev




EXPOSE 5050
CMD ["node", "/docker_dev/server.js"]
