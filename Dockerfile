# Use an official Python runtime as a base image
FROM python:3.8-slim


# Set the working directory in the container
WORKDIR /app

# Install Python dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Gradio application files into the container
COPY . /app/

# Expose the port on which your Gradio application will run
EXPOSE 10000

# Command to run the Gradio application
CMD ["python", "app.py"]
