FROM node
COPY . .
RUN npm init --yes
RUN npm install
RUN npm install http-server -g
WORKDIR "/home"
RUN http-server
PORT 3000
CMD ["npm", "start"]