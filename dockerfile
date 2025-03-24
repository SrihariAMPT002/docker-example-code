FROM node:latest

WORKDIR /var/www/html/dockerCI-CD/docker-example-code

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 4000
CMD [ "node", "index.js" ]
