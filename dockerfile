FROM frappe/frappe-socketio:v14.0.0
WORKDIR /home/frappe
CMD ["sh", "/app/start.sh"]
