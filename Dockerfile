FROM node:22-bookworm-slim

ENV CI=true
ENV PORT=4096
RUN npm install --global opencode-ai
EXPOSE 4096
CMD ["sh", "-c", "opencode serve --hostname 0.0.0.0 --port ${PORT:-4096}"]
