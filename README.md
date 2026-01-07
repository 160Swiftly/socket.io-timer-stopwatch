# Timer and Stopwatch with Flask and Socket.IO

This project provides a timer and stopwatch application that can be controlled remotely through a web interface on both mobile and desktop devices. It uses Flask for the backend, Socket.IO for real-time communication, and basic HTML/CSS/JavaScript for the frontend.

## Requirements

- Python 3.10.8
- `Flask`
- `Flask-SocketIO`
- Git Bash
- A modern web browser (e.g., Chrome, Firefox, Safari)
- Internet connection (for Socket.IO to work)

## Installation

Follow these steps to set up and run the project on your local machine:

### 1. Clone the repository or download the project files

If you're cloning from a Git repository, run:

```bash
git clone https://github.com/PavelShep/socket.io-timer-stopwatch
cd socket.io-timer-stopwatch
```

### 2. Install the required Python dependencies

```bash
pip install flask flask-socketio
```

### 3. Start the server

```bash
./start.sh
```

OR 

```bash
python server.py
```

This will start the Flask application, and the server should now be available at http://localhost:5000 on your laptop

## Docker Installation

You can also run this application using Docker, which ensures a consistent environment across different systems.

### Prerequisites

- Docker installed on your system ([Install Docker](https://docs.docker.com/get-docker/))

### Build the Docker Image

From the project root directory, build the Docker image:

```bash
docker build -f dockerfile -t timer-stopwatch .
```

This will:
- Create a conda environment with Python 3.10.8
- Install Flask and Flask-SocketIO
- Copy all necessary application files

### Run the Docker Container

Run the container with port mapping:

```bash
docker run -p 8000:8000 timer-stopwatch
```

The application will be available at http://localhost:8000

### Run in Detached Mode (Background)

To run the container in the background:

```bash
docker run -d -p 8000:8000 --name timer-app timer-stopwatch
```

### View Container Logs

To view the application logs:

```bash
docker logs timer-app
```

Or for real-time logs:

```bash
docker logs -f timer-app
```

### Stop the Container

To stop a running container:

```bash
docker stop timer-app
```

To remove the container:

```bash
docker rm timer-app
```

### Access from Other Devices

When running in Docker, access the application from other devices on the same network using:
- `http://<your-ip-address>:8000`

### 4 Access the application from other devices

Access the application from other devices
If you're using your phone or any other device connected to the same Wi-Fi network:

- Find the local IP address of your laptop by running ipconfig (on Windows) or ifconfig (on Mac/Linux) in your terminal.
- Use the IP address of the laptop with port 5000, for example: http://192.168.x.x:5000

Modifying text to practice git commands!
