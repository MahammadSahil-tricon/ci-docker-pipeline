# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy code
COPY . .

# If requirements.txt exists and isn’t empty, install it
RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi

# Command to run the app
CMD ["python", "app.py"]
