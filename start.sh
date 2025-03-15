#!/bin/bash

# Ensure we're in the correct directory
cd /home/frappe || exit 1

# Create frappe-bench if it doesn't exist
if [ ! -d "frappe-bench" ]; then
    bench init frappe-bench
fi

cd frappe-bench || exit 1

# Start bench
bench start
