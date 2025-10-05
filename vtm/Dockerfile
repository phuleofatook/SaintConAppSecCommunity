# vtm/Dockerfile (adjusted to run Flask dev server)
FROM python:3.12-slim
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential libpq-dev curl \
    && rm -rf /var/lib/apt/lists/*

COPY repos/vtm/ /opt/vtm/
WORKDIR /opt/vtm

# install requirements if present
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# ensure scripts are executable
RUN find /opt/vtm -type f -name "*.sh" -exec chmod +x {} \;

EXPOSE 80

# Run the app directly (assumes app.py defines Flask app)
# If the repo uses a different file/entrypoint, change app.py -> run.py or module/path accordingly
CMD ["python", "app.py", "--host=0.0.0.0", "--port=80"]
