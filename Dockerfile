FROM node:12.2.0.slim

WORKDIR /src
ENV PORT=8080

RUN yarn global add serve@11.3.2
COPY package.json .
RUN yarn

COPY . /src
RUN yarn build
Expose 8080

CMD serve -p 8080 -s build