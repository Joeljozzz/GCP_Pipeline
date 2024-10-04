# Use the official Node.js 18 image as the base
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files to install dependencies
COPY package*.json ./

# Install Node.js dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (assuming 3000)
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
