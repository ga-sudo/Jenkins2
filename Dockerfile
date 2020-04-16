FROM node:13.12.0-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
RUN apk add git
RUN git clone https://github.com/gothinkster/react-redux-realworld-example-app /app
RUN npm install --silent
CMD [ "npm" , "start" ]
EXPOSE 4100
