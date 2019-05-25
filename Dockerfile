FROM node:8
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json ./
RUN yarn install

# Copying source files
COPY . .

# Building app
RUN yarn build
EXPOSE 3000
# Running the app
CMD [ "yarn", "start" ]