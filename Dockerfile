FROM node:10.16.3-alpine as builder
WORKDIR /app

COPY package.json yarn.lock /app/
RUN yarn

COPY . /app/
RUN yarn build

EXPOSE 3000
CMD ["yarn", "start"]
