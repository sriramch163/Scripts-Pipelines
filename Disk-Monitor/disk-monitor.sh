#!/bin/bash


# Usage limit attached
LIMIT=80


# Getting current disk usage for root partition "/"
USAGE=$(df / | tail -1 | awk '{print $5}' | tr -d '%')


# Comparing the limit
if [ $USAGE -gt $LIMIT ]; then
  echo "Warning: Disk Usage is ${USAGE}% (limit: ${LIMIT}% on $(hostname))"
  exit 1
else
  echo "Disk Usage is OK: ${USAGE}% used."
fi
