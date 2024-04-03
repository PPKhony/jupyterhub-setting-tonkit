#!/bin/bash

# Set the namespace and release name
NAMESPACE="tonkit-lab"
RELEASE_NAME="alpha-0.0.1"

# Add any additional configuration values here
# For example:
# CONFIG_VALUE="your-config-value"

# Install or upgrade the Helm chart
helm upgrade --install $RELEASE_NAME \
    --namespace $NAMESPACE \
    --values values.yaml \
    --set configValue=$CONFIG_VALUE \
    your-chart-repo/your-chart-name