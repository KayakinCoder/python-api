A very simple python rest api (flask) that I'm using to play around with a few aws resources. Using uv for dependencies.

### Local Dev

Run the api in dev mode, on port 8000:
source rund.sh

### Docker Production

Build the image:
```
docker build -t pythonapi:latest .
```