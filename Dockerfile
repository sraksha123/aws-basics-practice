# Stage 1: Build stage
FROM node:26-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production && npm cache clean --force

# Stage 2: Production runtime stage
FROM node:26-alpine AS runner
WORKDIR /app
RUN addgroup -g 1001 -S nodejs && adduser -u 1001 -S nodejs -G nodejs
COPY --from=builder /app/node_modules ./node_modules
COPY package*.json ./
COPY app.js ./
USER nodejs

EXPOSE 3000
CMD ["node", "app.js"]
