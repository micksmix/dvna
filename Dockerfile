# Damn Vulnerable NodeJS Application

FROM node:carbon
LABEL MAINTAINER "Subash SN"

WORKDIR /app

COPY . .

RUN npm install -g pnpm \
        && chmod +x /app/entrypoint.sh \
        && pnpm install

CMD ["bash", "/app/entrypoint.sh"]