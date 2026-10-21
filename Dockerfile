# nixpacks Node'u kendi nixpkgs'inden sabitliyor (22.11); resmi imaj güvenlik yamalarını hemen alır.
FROM node:22-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY . .
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "server.js"]
