FROM node:18

WORKDIR /workspace
COPY package*.json ./
RUN npm install
COPY . .
RUN apt-get update && apt-get install -y git-lfs

EXPOSE 3500
CMD ["npm", "run", "dev"]