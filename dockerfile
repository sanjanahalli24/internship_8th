# Use Node.js as base image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Expose the port the app will run on
EXPOSE 8080

# Run the app
CMD ["npm", "start"]
