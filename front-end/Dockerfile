
FROM  node:lts-alpine3.10
ENV NODE_ENV "production"
ENV PORT 8079
EXPOSE 8079
RUN addgroup mygroup && adduser -D -G mygroup myuser && mkdir -p /usr/src/app && chown -R myuser /usr/src/app

# Prepare app directory
WORKDIR /usr/src/app
COPY package*.json /usr/src/app/
COPY yarn.lock /usr/src/app/
RUN  yarn install --production 
COPY . /usr/src/app
RUN npm config set unsafe-perm true
RUN npm i npm@latest -g
#COPY yarn.lock /usr/src/app/
RUN chown -R myuser /usr/src/app/yarn.lock
USER myuser
# Start the app
CMD ["/usr/local/bin/npm", "start"]
