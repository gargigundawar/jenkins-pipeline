# Use official Node.js image as base
FROM node:16

# Set working directory in the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
