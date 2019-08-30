# Use an official Python runtime as a parent image
FROM python:3.6

MAINTAINER Kareem "https://www.linkedin.com/in/kareem-abdallah/"

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install needed packages specified in requirements.txt and upgrade pip as well
RUN pip install -r requirements.txt \
    && pip3.6 install --upgrade pip

# Make port 5000 available to the world outside this container
#EXPOSE 5000

#ENV FLASK_APP app.py

# Run app.py when the container launches
#CMD ["python", "app.py"]
#ENTRYPOINT ["python", "app.py"]
