# Instructions to Run the Web Application with Docker

This document provides instructions on how to run the web application on `localhost:7775`.

## Prerequisites

- Docker installed on your local machine.
- Web application source code.

## Steps to Run the Application

1. Clone this repository or navigate to your existing web application project directory.

2. Ensure that your web application is configured to run on port 7775. If not, make necessary changes in your application code.

3. Create a Dockerfile in the root directory of your project with the following content:

    ```Dockerfile
    # Use a base image for Node.js
    FROM node:16-alpine

    # Set the working directory in the container
    WORKDIR /jimenez_santiago_site

    # Copy package.json and package-lock.json (if exists)
    COPY package*.json ./

    # Install project dependencies
    RUN npm install

    # Copy the rest of the application code into the container
    COPY . .

    # Expose port 7775
    EXPOSE 7775

    # Command to run the application
    CMD ["npm", "start"]
    ```

4. Build the Docker image using the following command in the terminal:

    ```bash
     docker build -t jimenez_santiago_coding_assignment11 .
    ```


5. Run a Docker container based on the created image using the following command:

    ```bash
    docker run -p 7775:3000 --name jimenez_santiago_coding_assignment11 jimenez_santiago_coding_assignment11
    ```

6. Open your web browser and navigate to `http://localhost:7775` to view the running web application.

7. https://github.com/sjzquintero/coding-assignment-11.git
