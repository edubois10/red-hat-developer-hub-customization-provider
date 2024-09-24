# Use the official Node.js 16 LTS image as the base
FROM registry.redhat.io/ubi9/nodejs-18:1-112.1719561319

# Set the working directory (default is already /opt/app-root/src)
WORKDIR /opt/app-root/src

# Switch to root to change directory ownership
USER root

# Copy application source code
COPY . .

# Install dependencies
RUN npm install

# Expose port (replace with your app's port if different)
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
