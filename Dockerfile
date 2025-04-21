FROM ubuntu:22.04

# note: in a real production environment, this can be improved greatly. we could create a slimmer final image that does
# not include uv, cleans up unneeded /.venv, etc. see the uv docs for detailed examples. and of course distroless

# install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# copy the application into the container. permissions are required for the prod run file
COPY --chmod=755 . /app

# install the application dependencies
WORKDIR /app
RUN uv sync --frozen --no-cache

# Run the application.
CMD ["./runp.sh"]
