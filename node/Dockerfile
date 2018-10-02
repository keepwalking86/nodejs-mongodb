FROM node:latest

WORKDIR /home/node/app

#update latest npm to fix vulnerabilities
RUN npm i npm@latest -g

RUN npm install -g express-generator

COPY app/package.json /home/node

RUN cd /home/node && npm install

CMD ["npm", "start"]

EXPOSE 3000
