# Use Alpine Linux for base image
FROM alpine:latest

# Install necessary dependencies (Alpine uses 'apk' for package manangement)
RUN apk update && apk add --no-cashe \
antora \
git \
# add other dependancies here

# Set up your Antora project directory
WORKDIR /the-tech-manual

# Clone your GitHub repo
RUN git clone https://github.com/Dom-Caracappa/the-tech-manual.git .

# Expose necessary ports
EXPOSE 80

# Define the command to run your Antora docs
CMD [ "antora", "generate", "antora-playbook.yml" ]