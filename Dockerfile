FROM alpine:3.15

ENV NODE_VERSION 16.15.1


# Add a work directory
WORKDIR /frontend

# copy the json file first
COPY ./package.json /frontend


RUN npm install
# Copy app files
COPY . .
# Expose port
EXPOSE 8080
# Start the app
CMD [ "npm", "run", "start" ]