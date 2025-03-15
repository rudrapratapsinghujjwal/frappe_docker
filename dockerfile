FROM ubuntu:latest

WORKDIR /home/frappe

# Install necessary dependencies
RUN apt-get update && apt-get install -y dos2unix

# Copy the script
COPY start.sh /app/start.sh

# Fix permissions
RUN chmod 755 /app/start.sh && dos2unix /app/start.sh || true

# Run the script
CMD ["sh", "/app/start.sh"]
