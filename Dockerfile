FROM node:8
WORKDIR /app
RUN npm install -g nodemon
COPY package.json /app
RUN npm install
COPY . /app
CMD [ "npm", "run", "debug" ]