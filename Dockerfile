#use the official Node.js image from the Docker Hub
From node:14
#set the working directory inside the container
workDIR /usr/src/app
COPY package*.json ./
#Install dependencies
RUN npm install
#copy the reset of your application code
copy . .
#expose the port the app runs on
EXPOSE 3111
#command to run the application
CMD ["node" ,"app.js"]

