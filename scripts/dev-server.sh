#!/bin/bash
# Development server script

echo "Starting Quarto development server..."
echo "Book will be available at http://localhost:3000"
echo "Press Ctrl+C to stop"

# Activate virtual environment if it exists
if [ -d "venv" ]; then
    source venv/bin/activate
fi

# Start Quarto preview
quarto preview --port 3000 --host 0.0.0.0
