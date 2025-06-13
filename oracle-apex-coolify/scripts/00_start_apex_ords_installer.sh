#!/bin/bash

# Start the ORDS service
su - <<EOF
sh /home/oracle/scripts/start_ords.sh
EOF

# Health check for ORDS
while ! curl -s http://localhost:8080/ords/ > /dev/null; do
    echo "Waiting for ORDS to start..."
    sleep 5
done

echo "ORDS has started successfully."