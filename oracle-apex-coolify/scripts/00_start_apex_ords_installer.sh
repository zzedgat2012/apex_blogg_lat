#!/bin/bash

# Start the ORDS service
su - <<EOF
sh /opt/oracle/scripts/startup/unattended_apex_install_23c.sh > /home/oracle/unattended_apex_install_23c.log
EOF

# Health check for ORDS
while ! curl -s http://localhost:8080/ords/ > /dev/null; do
    echo "Waiting for ORDS to start..."
    sleep 5
done

echo "ORDS has started successfully."