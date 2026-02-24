FROM node:20-alpine

# Install only what we need for git polling
RUN apk add --no-cache git

WORKDIR /app

# Copy source (no .git thanks to .dockerignore)
COPY . .

EXPOSE 8080

# Simple static preview with git polling
CMD ["node", "scripts/static-supervisor.js"]
