FROM node:24-bullseye

ENV APP_DIR=/app
WORKDIR ${APP_DIR}

# Requirements are installed here.
RUN apt -y update \
    && apt -y install fish

# Install OpenCode AI CLI
RUN npm i -g opencode-ai
