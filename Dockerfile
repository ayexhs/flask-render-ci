# Use official Python image from Docker Hub
FROM python:3.10

# Set working directory inside the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the application code
COPY . .

# Expose port 5000 to host
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
