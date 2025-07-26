FROM node:18

WORKDIR /workspace
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 3500
CMD ["npm", "run", "dev"]