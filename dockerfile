# Use official Node.js 18 base image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
