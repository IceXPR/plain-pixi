# plain-pixi

This is a template app to help create applications using PixiJS.

## Development using webpack
```
npm install -g webpack typescript webpack-cli
npm install -g --only=dev
npm install
webpack 
```

## Development using the dev container
Use the following command to build a Docker container.
``` bash
docker build -t plain-pixi .
```

## Running the App
Use the following command to run the container with the PixiJS app.
``` bash
docker run -p 8000:8000 plain-pixi
```