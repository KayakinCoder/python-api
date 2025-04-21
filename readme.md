A very simple python rest api (flask) that I'm using to play around with a few aws resources. Using uv for dependencies.

### Local Dev

Run the api in dev mode, on port 8000:
source rund.sh

**Test Docker Container Locally**
Test out your production container. First, build the container (see section below). Then run the command below, and test
by pinging http://127.0.0.1:3000/hello:  
docker run -d -p 3000:3000 kayakincoder/python-api:latest

### Docker Production

Build the image:
```
docker build -t username/repo/tag .

# for my dockerhub:
docker build -t kayakincoder/python-api:latest .
```

Push the image:
```
docker push kayakincoder/python-api:latest
```
