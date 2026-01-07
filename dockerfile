# Install conda (package size: 244MB)
FROM continuumio/miniconda3

WORKDIR /Docker

# Copy environment.yml and create conda environment (package size: 1.3MB)
COPY environment.yml .
RUN conda env create -f environment.yml

# Copy server.py (package size: 0.5MB)
COPY server.py .

# Copy templates and static files (required for Flask)
COPY bin/templates ./templates
COPY bin/static ./static

# Expose port 8000
EXPOSE 8000

# Run the server using the conda environment (package size: 0.5MB)
# --no-capture-output ensures we can see errors in docker logs
CMD ["conda", "run", "--no-capture-output", "-n", "stopwatch", "python", "server.py"]