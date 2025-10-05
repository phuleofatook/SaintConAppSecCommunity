FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends git curl unzip wget npm golang && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir semgrep pip-audit
RUN go install github.com/google/osv-scanner/cmd/osv-scanner@v1
RUN ln -s /root/go/bin/osv-scanner /usr/local/bin/osv-scanner || true
WORKDIR /repos
CMD ["/bin/bash"]
