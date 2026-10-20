# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]



# # Use a lightweight Python image
# FROM python:3.13-slim

# # Set the working directory
# WORKDIR /app

# # Prevent Python from creating unnecessary cache files
# ENV PYTHONDONTWRITEBYTECODE=1
# ENV PYTHONUNBUFFERED=1

# # Copy and install dependencies first
# COPY requirements.txt .

# RUN pip install --no-cache-dir -r requirements.txt

# # Copy application files
# COPY . .

# # Set Flask configuration
# ENV FLASK_APP=app.py

# # Expose Flask port
# EXPOSE 5000

# # Start the Flask application
# CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]