#!/bin/bash

set -o errexit
set -o pipefail

echo "Building Docker..."
docker build --pull -t latest .

echo "Starting Docker..."
docker run -it --rm --name finger-t18s -p 7979:7979 latest
