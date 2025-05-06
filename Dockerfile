# Use Node.js base image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy package files first to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose backend port (change if needed)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
