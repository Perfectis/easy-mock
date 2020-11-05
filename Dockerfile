FROM node:8.17.0-alpine AS builder

WORKDIR /opt/easy-mock
COPY . .
# Mark the build as statically linked.
RUN npm install && npm run build

CMD ["npm app"]
EXPOSE 80
