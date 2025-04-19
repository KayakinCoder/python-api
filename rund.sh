#!/bin/bash

# local dev run file
cp dev.env .env
uv run -- flask --app ./src/main run
