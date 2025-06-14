FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME DBTest
ENV MONGODB_CLUSTER_ADDRESS dbtest.blsv2jr.mongodb.net
ENV MONGODB_USERNAME healthaid15
ENV MONGODB_PASSWORD BTLbNvccesAiFnZU

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]