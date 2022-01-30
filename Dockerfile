FROM ubuntu:20.04

# install curl

RUN apt-get update
RUN apt install -y curl

# install node

RUN curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt install -y nodejs

# install yarn

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install -y yarn

# install pm2

RUN yarn global add pm2

# setup svelte and all

WORKDIR /app

COPY package.json ./
RUN yarn

COPY . ./
RUN yarn build
