#!/bin/bash
set -e

cd /waterfall

echo "Fetching Paper"
wget -O Paper.jar $PAPER_JAR_URL
