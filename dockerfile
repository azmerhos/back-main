FROM node

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

USER node

RUN git clone https://github.com/azmerhos/back-main.git

WORKDIR /home/node/app/back-main

RUN npm install

EXPOSE 5001

CMD [ "npm", "start" ]