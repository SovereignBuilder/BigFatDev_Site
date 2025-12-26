# Use the official Node.js 18 image (matching your package.json engine)
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files first to leverage Docker cache for dependencies
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Build the Astro project
RUN npm run build

# Expose the port Astro/Preview runs on (usually 4321)
EXPOSE 4321

# Command to preview the built site
CMD ["npm", "run", "preview", "--", "--host"]
