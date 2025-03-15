FROM frappe/frappe-socketio:v14.0.0
WORKDIR /home/frappe
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh
CMD ["sh", "/app/start.sh"]
