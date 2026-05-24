# Stage 1: Build Angular app
FROM node:20-alpine AS build
LABEL authors="EDDYLIAN"
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --prod

# Stage 2: Serve with Nginx
FROM nginx:1.27-alpine
COPY --from=build /app/dist/Frontend_Angular /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80


