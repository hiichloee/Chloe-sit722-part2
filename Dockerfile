# Dockerfile for book_catalog microservice

# Use the official Python base image
FROM python:3.9-slim

# Set up a working directory
WORKDIR /app

# Copy project files to the container's working directory
COPY book_catalog/requirements.txt /app/
COPY book_catalog/ /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Expose the application port (here is the port on which FastAPI runs by default)
EXPOSE 4000

# Start the FastAPI application using Uvicorn 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "4000", "--reload"]
