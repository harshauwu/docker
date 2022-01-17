FROM node:14

#create a working directory
WORKDIR /usr/src/app/example-01

#copy package.json file under the working directory
COPY package.json /usr/src/app/example-01 

RUN npm install 


# Bundle app source
COPY . /usr/src/app/example-01  

CMD ["node", "index.js"]

