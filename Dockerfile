FROM node

RUN mkdir -p docker_dev
WORKDIR /docker_dev 

# Copy only package.json and package-lock.json first (for caching)
COPY package*.json ./

#Install dependencies inside the container
RUN npm install 

#Copy rest of app
COPY . .




EXPOSE 5050
CMD ["node", "/docker_dev/server.js"]
