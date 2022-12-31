FROM node:18-alpine

WORKDIR /app

COPY package.json vite.config.js svelte.config.js .

RUN yarn

COPY . .

EXPOSE 5000

RUN yarn build

CMD ["yarn", "preview"]
