# Use official Node.js image as the base image
FROM node:14-alpine 

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
