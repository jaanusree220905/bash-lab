#!/bin/bash

SERVICE_NAME="${1:-nginx}"

if systemctl is-active --quiet "$SERVICE_NAME"; then
    echo "HEALTHY: $SERVICE_NAME is active."
    exit 0
else
    echo "UNHEALTHY: $SERVICE_NAME is not active."
    exit 1
fi
