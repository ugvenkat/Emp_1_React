FROM node:14-alpine AS development
ENV NODE_ENV development
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