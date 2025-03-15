#!/bin/bash

# Ensure we're in the correct directory
cd /home/frappe || exit 1

# Check if frappe-bench exists, if not, create it
if [ ! -d "frappe-bench" ]; then
    bench init frappe-bench --frappe-branch version-14
fi

# Navigate to the frappe-bench directory
cd frappe-bench || exit 1

# Start bench
bench start
