#!/bin/bash
set -e

cd /paper

echo "Fetching Paper"
wget -O Paper.jar $PAPER_JAR_URL
