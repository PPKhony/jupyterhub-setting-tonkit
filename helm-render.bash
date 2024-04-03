#!/bin/bash

# Set the necessary variables
CHART_NAME="my-chart"
NAMESPACE="my-namespace"
VALUES_FILE="values.yaml"
OUTPUT_DIR="rendered"

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Render the Helm chart
helm template "$CHART_NAME" \
    --namespace "$NAMESPACE" \
    --values "$VALUES_FILE" \
    --output-dir "$OUTPUT_DIR"