#!/bin/bash

echo "🚀 Setting up ft_transcendence..."

# Create frontend .env file if it doesn't exist
if [ ! -f "frontend/.env" ]; then
    echo "📝 Creating frontend/.env file..."
    cp frontend/.env.example frontend/.env
    echo "✅ Frontend environment variables configured"
else
    echo "✅ Frontend .env file already exists"
fi

# Create backend .env file if it doesn't exist
if [ ! -f "backend/.env" ]; then
    echo "📝 Creating backend/.env file..."
    cp backend/.env.example backend/.env
    echo "✅ Backend environment variables configured"
else
    echo "✅ Backend .env file already exists"
fi

# Create necessary directories
echo "📁 Creating necessary directories..."
mkdir -p database
mkdir -p ssl

# Set proper permissions
echo "🔒 Setting proper permissions..."
chmod +x setup.sh

echo ""
echo "🎉 Setup complete! You can now run:"
echo "   docker-compose up -d"
echo ""
echo "📱 Access the application at:"
echo "   https://localhost (HTTPS - Recommended)"
echo "   http://localhost (HTTP - Redirects to HTTPS)"
echo ""
echo "⚠️  Note: You'll see a security warning for the self-signed certificate."
echo "   This is normal for development. Click 'Advanced' and 'Proceed to localhost'."