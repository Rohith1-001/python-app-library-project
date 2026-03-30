FROM python:3.9-slim   // Sets the base image to an official Python 3.9 image using the slim variant

WORKDIR /app  // Sets /app as the working directory inside the container. All subsequent commands (COPY, RUN, CMD) will execute relative to this path

COPY requirements.txt .  // Copies requirements.txt from your local machine into /app/ inside the container.
RUN pip install --no-cache-dir -r requirements.txt   // Installs all Python dependencies listed in requirements.txt

# Copy app.py + templates
COPY app.py .   
COPY templates ./templates

// Copies your application code (app.py) and the templates/ folder into the container.


EXPOSE 5000  // Documents that the container listens on port 5000 at runtime.

CMD ["python", "app.py"]