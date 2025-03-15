FROM ubuntu:22.04

WORKDIR /home/frappe

# Install necessary dependencies
RUN apt-get update && apt-get install -y python3-pip nodejs npm \
    redis-server mariadb-server curl \
    && apt-get clean

# Install Bench
RUN pip install frappe-bench

# Copy the script
COPY start.sh /app/start.sh

# Fix permissions and format
RUN chmod +x /app/start.sh && dos2unix /app/start.sh || true

# Run the script
CMD ["/bin/bash", "/app/start.sh"]
