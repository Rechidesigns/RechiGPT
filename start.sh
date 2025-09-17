#!/bin/bash

# Start the ChatGPT Clone application

echo "Starting ChatGPT Clone..."

# Check if virtual environment exists
if [ ! -d "backend/venv" ]; then
    echo "Creating Python virtual environment..."
    cd backend
    python -m venv venv
    cd ..
fi

# Activate virtual environment and install backend dependencies
echo "Setting up backend..."
cd backend
source venv/bin/activate
pip install -r requirements.txt

# Start backend in background
echo "Starting backend server..."
python main.py &
BACKEND_PID=$!

cd ..

# Install frontend dependencies
echo "Setting up frontend..."
cd frontend
npm install

# Start frontend
echo "Starting frontend server..."
npm run dev &
FRONTEND_PID=$!

cd ..

echo "Application started!"
echo "Backend: http://localhost:8000"
echo "Frontend: http://localhost:3000"
echo ""
echo "Press Ctrl+C to stop both servers"

# Wait for Ctrl+C
trap "kill $BACKEND_PID $FRONTEND_PID; exit" INT
wait
