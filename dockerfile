WORKDIR /home/frappe

# Copy the script
COPY start.sh /app/start.sh

# Fix permission issues inside Docker
RUN chmod 755 /app/start.sh && dos2unix /app/start.sh || true

# Run the script
CMD ["sh", "/app/start.sh"]
