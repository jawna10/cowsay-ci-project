# Use a lightweight Node.js base image
FROM node:18-alpine

#set working directory inside the container
WORKDIR /app

#coping source code inside the container
COPY src/ /app

#add the script.sh
COPY entrypoint.sh /entrypoint.sh

#make the script executable
RUN chmod +x /entrypoint.sh

#Installs all required dependencies
RUN npm install

#Uses your entrypoint.sh script to run the server
ENTRYPOINT ["/entrypoint.sh"]
