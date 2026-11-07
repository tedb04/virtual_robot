#!/bin/bash

# Run Maven build
echo "Running mvn clean initialize..."
mvn clean initialize

echo "Running mvn install..."
mvn install

# Identify the jar file in the target directory
# Based on pom.xml, the artifact is virtual-robot-simulator-1.5.0-SNAPSHOT.jar
JAR_FILE=$(ls target/virtual-robot-simulator-*.jar | head -n 1)

if [ -z "$JAR_FILE" ]; then
    echo "Error: Could not find the generated JAR file in target/ directory."
    exit 1
fi

echo "Found JAR: $JAR_FILE"

# Target directory
TARGET_DIR="repo/com/github/tedb04/virtual-robot-simulator"

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Copy the jar file to the repo directory
cp "$JAR_FILE" "$TARGET_DIR/"

echo "Successfully copied $JAR_FILE to $TARGET_DIR"