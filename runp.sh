#!/bin/bash

# prod run file

# env vars
cp prod.env .env

# TODO: replace with a real server
# Note that exec is vital here, it triggers the process running the script to be replaced with the command given
# instead of starting the command as a sub-processes. This is important, because Docker associates the life of the 
# container to the first process that runs on it. In cases like this one, where the start-up process is not the main
# process of the container, you need to make sure that the main process takes the place of that first process to ensure
# that the container is not terminated early by Docker.
exec uv run -- flask --app ./src/main run