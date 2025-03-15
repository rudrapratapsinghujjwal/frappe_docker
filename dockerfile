FROM ubuntu:22.04

# Set environment variables
ENV USER=frappe
ENV HOME=/home/frappe

# Create a non-root user
RUN useradd -m -d $HOME -s /bin/bash $USER

# Set working directory
WORKDIR $HOME

# Install dependencies
RUN apt-get update && apt-get install -y python3-pip nodejs npm \
    redis-server mariadb-server curl \
    && apt-get clean

# Install Bench
RUN pip install frappe-bench

# Switch to non-root user
USER frappe

# Copy the script
COPY start.sh /home/frappe/start.sh

# Make script executable
USER root  # Temporarily switch to root to set permissions
RUN chmod +x /home/frappe/start.sh
USER frappe  # Switch back to non-root user

# Run script
CMD ["/bin/bash", "/home/frappe/start.sh"]
