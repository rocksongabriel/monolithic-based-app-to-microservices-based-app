FROM node:16

# Create app work directory
WORKDIR /usr/src/app

# Install packages
COPY package*.json ./

RUN npm ci

# Bundle the app source
COPY .. 
EXPOSE 8080

CMD [ "npm", "run", "prod" ]
