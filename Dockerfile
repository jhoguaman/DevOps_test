FROM node:latest
RUN mkdir -p /src/app/
WORKDIR /src/app/
COPY app/package.json /src/app/package.json 
RUN npm install 
COPY app/ /src/app/
EXPOSE 3000
CMD ["npm", "start"] 