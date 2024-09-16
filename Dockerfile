# FROM node:20.17.0-alpine3.20 AS build
FROM oven/bun:1.1.27-alpine AS build

WORKDIR /app

COPY package.json ./

RUN bun install

COPY . .

RUN bun run build

FROM nginx:1.27.1-alpine3.20

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl -f http://localhost:80/health || exit 1

CMD ["nginx", "-g", "daemon off;"]
