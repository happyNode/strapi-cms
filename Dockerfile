FROM node:16.14.2 AS build

WORKDIR /home

COPY . .

RUN npm install

ENV TZ="Asia/Shanghai"

EXPOSE 1337

RUN npm run pro:build

ENTRYPOINT ["npm", "run", "pro"]
