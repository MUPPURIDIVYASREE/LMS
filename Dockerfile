# Use Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Expose port (change if your app uses another port)
EXPOSE 80

# Start the app
CMD ["npm", "start"]
