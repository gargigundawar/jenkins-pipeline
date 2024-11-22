# Use official Node.js image
FROM node:14

# Set working directory in the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy application files to container
COPY . .

# Expose port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
