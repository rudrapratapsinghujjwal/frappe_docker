#!/bin/bash
bench init --frappe-branch version-14 frappe-bench
cd frappe-bench
bench new-site yoursite.localhost --admin-password admin --mariadb-root-password root
bench start
