#!/bin/bash

set -u

APP_NAME="DevOps Demo"
APP_URL="http://127.0.0.1:8000"

echo "================================"
echo " Application Health Check"
echo "================================"

echo "Application: $APP_NAME"
echo "URL: $APP_URL"
echo

if command -v curl >/dev/null 2>&1; then
    echo "Checking HTTP endpoint..."

    if curl --fail --silent --show-error \
        --max-time 5 "$APP_URL" >/dev/null; then

        echo "HEALTHY: Application is responding."
        exit 0
    else
        echo "UNHEALTHY: Application did not respond successfully."
        exit 1
    fi
else
    echo "ERROR: curl is not installed."
    exit 2
fi
