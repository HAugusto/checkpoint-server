FROM node:24-alpine3.21

LABEL mantainer="Higor Augusto"
LABEL repository="https://github.com/HAugusto/checkpoint-server"
LABEL version="0.0.1"

WORKDIR /app

COPY ./package.json ./yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 3000

CMD ["yarn", "start:dev"]