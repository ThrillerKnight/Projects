#!/bin/bash

# Simple Nmap Scan Script
# Usage: ./scan.sh <target>

if [ -z "$1" ]; then
  echo "Usage: $0 <target>"
  echo "Example: $0 192.168.1.0/24"
  exit 1
fi

echo "Scanning target: $1"
nmap -sV -A "$1" -oN scan_output.txt

echo "Scan complete. Results saved to scan_output.txt"
