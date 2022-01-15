#syntax=docker/dockerfile:1
FROM node:12-alpine
ENV NODE_VERSION 12.22.0    
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY app /relative/to/WORKDIR
RUN yarn instakk --production
CMD ["node", "src/index.js"]
