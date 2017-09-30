FROM node:latest

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install bash
RUN yarn global add create-react-app
RUN create-react-app app
RUN cd app
RUN chown node:node -R .
RUN yarn install
RUN yarn start