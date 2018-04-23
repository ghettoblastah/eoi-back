FROM node:carbon

WORKDIR /usr/src/app

ENV NODE_ENV 'production'

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD [ "npm", "start" ]
