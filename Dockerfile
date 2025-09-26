# Dockerfile
FROM node:18-alpine
WORKDIR /usr/src/app

# only copy manifests first (better cache)
COPY package*.json ./

# Install ALL deps, including dev (mocha, chai, etc.)
RUN npm ci --include=dev

# now copy the rest of the app
COPY . .

ENV PORT=3000
EXPOSE 3000
CMD ["npm", "start"]
