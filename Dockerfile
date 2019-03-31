# use the latest node LTS release
FROM node:carbon
RUN mkdir /practice_docker
ADD . /practice_docker
WORKDIR /practice_docker
RUN npm i
EXPOSE 80
CMD ["npm", "start"]