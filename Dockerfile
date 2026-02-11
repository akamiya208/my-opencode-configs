FROM node:24-bullseye

ENV APP_DIR=/app
WORKDIR ${APP_DIR}

# Requirements are installed here.
RUN apt -y update \
    && apt -y install fish

# Install OpenCode AI CLI
RUN npm i -g opencode-ai \
    && npx --yes oh-my-opencode install --no-tui --claude=no --openai=no --gemini=no --copilot=yes --opencode-zen=no --zai-coding-plan=no