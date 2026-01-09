# Install conda (package size: 244MB)
FROM python:3.10-slim

# Install git and update the package manager
RUN apt-get update && apt-get install -y git

# Clone the repository
RUN git clone https://github.com/160Swiftly/socket.io-timer-stopwatch.git /app

# Set working directory
WORKDIR /app

# Install Python dependencies
RUN pip install flask flask-socketio

EXPOSE 8000

CMD ["python", "socket.io-timer-stopwatch/server.py"]