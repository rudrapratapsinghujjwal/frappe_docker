WORKDIR /home/frappe

# Ensure the script is copied with correct permissions
COPY --chown=root:root start.sh /app/start.sh

# Grant execute permissions
RUN chmod +x /app/start.sh

CMD ["sh", "/app/start.sh"]
