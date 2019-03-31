# use the latest node LTS release
FROM node:carbon
WORKDIR /usr/src/app
ENV NODE_ENV = production

# copy package.json and package-lock.json and install packages. we do this
# separate from the application code to better use docker's caching
# `npm install` will be cached on future builds if only the app code changed
COPY package*.json ./
RUN npm install


# copy the app
COPY . .
# run db migration
RUN node_modules/.bin/sequelize db:create
RUN node_modules/.bin/sequelize db:migrate
# expose port 3000 and start the app
EXPOSE 3000
CMD [ "npm", "start" ]