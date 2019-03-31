# use the latest node LTS release
FROM node:carbon
RUN mkdir /practice_docker
ADD . /practice_docker
WORKDIR /practice_docker
RUN npm i
EXPOSE 3000
CMD ["npm", "start"]