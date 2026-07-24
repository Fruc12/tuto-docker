FROM node:alpine

WORKDIR /app

COPY . .

RUN npm install
RUN npm install -g serve
RUN npm run build
RUN rm -rf node_modules

EXPOSE 3000

CMD ["serve", "-s", "dist"]