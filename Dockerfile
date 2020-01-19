FROM node:latest as build
RUN mkdir /app
COPY . /app
WORKDIR  /app
RUN npm install -g typings webpack typescript webpack-cli
RUN npm install -g --only=dev
RUN npm install
RUN npm link typescript
RUN typings install --global --save-dev dt~pixi.js
RUN webpack 

FROM node:alpine
EXPOSE 8000
RUN mkdir /dist
COPY --from=build /app/dist /dist
WORKDIR /dist
RUN npm -g install static-server
CMD static-server --index index.html --port 8000