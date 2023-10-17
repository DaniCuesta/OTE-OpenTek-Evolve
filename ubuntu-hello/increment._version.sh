#!/bin/bash

# Lee la versión actual del Dockerfile
CURRENT_VERSION=$(awk -F= '/VERSION/ {print $2}' Dockerfile)

# Incrementa la versión en 0.1
NEW_VERSION=$(awk "BEGIN {print $CURRENT_VERSION + 0.1}")

# Reemplaza la versión en el Dockerfile
sed -i "s/VERSION=$CURRENT_VERSION/VERSION=$NEW_VERSION/" Dockerfile

echo "La nueva versión es $NEW_VERSION"
