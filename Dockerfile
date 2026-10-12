# Choosing a base image with node.js runtime environment
FROM node:16

# Set the working directory where all subsequent commands will be run
WORKDIR /app

# Copy package.json which has the requirements for the application into the working directory
COPY package.json .

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]