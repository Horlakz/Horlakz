FROM node:18-alpine

WORKDIR /app

COPY package.json package.json

RUN yarn

COPY . .

RUN yarn

EXPOSE 5000

RUN yarn build

CMD ["yarn", "preview", "--host"]
