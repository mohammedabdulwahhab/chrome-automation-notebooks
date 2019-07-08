# Define the base image
FROM python:3.6-stretch

# Install jupyter with pip so we can serve notebooks
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install jupyter

# Install Chromium
RUN apt update
RUN apt --assume-yes install chromium chromium-l10n

# Create a notebooks directory within the container and make it our working directory
WORKDIR /notebooks

# Create a chrome directory to host our chromedriver
RUN mkdir ../chrome

# Copy the chromedriver file from host to our container
COPY chrome/linux-docker/chromedriver ../chrome

# Starts jupyter notebooks # ip flag is to resolve issues
CMD jupyter notebook --ip=0.0.0.0 --port=8080 --allow-root
