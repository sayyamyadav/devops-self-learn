#base image

FROM node:16

#working dir

WORKDIR /app

#code 
COPY . .


# reyured library
RUN npm install express ejs


#run
CMD ["node", "app.js"]
