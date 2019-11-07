FROM node:11.3
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package.json /usr/src/app/package.json
RUN npm install --registry https://registry.npm.taobao.org
COPY . /usr/src/app
ENTRYPOINT ["ng","serve","--port","3000"]