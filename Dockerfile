FROM ubuntu:latest

# Install a simple text editor (nano) just as an example
RUN apt-get update && apt-get install -y vim

# Create a new directory called "myapp" in the container
RUN mkdir /myapp

# Set /myapp as the working directory
WORKDIR /myapp

# Create a new file called "hello.txt" in the /myapp directory
RUN echo "Hello, Docker!" > hello.txt

# Define a command to display the contents of hello.txt when the container starts
CMD cat hello.txt
