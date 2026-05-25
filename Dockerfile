# Use official Node image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Build the app
RUN npm run build

EXPOSE 3000

# Start the app
CMD ["npm", "run", "start"]

