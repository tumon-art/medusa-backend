FROM node:18.17.1

WORKDIR /app/medusa

COPY package.json .

RUN apt-get update

RUN npm install -g npm@9.8.1

RUN npm install -g @medusajs/medusa-cli@latest

RUN npm install --loglevel=error

COPY . .

EXPOSE 9000

ENTRYPOINT ["./develop.sh", "start"]
