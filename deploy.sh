#!/bin/bash

# Deploy script for Rafal Electric Website
echo "🚀 Starting deployment process..."

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Build the project
echo "🔨 Building the project..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build completed successfully!"
    echo "🌐 Your website is ready for deployment!"
    echo ""
    echo "📋 Next steps:"
    echo "1. Push your code to GitHub"
    echo "2. Connect your repository to Netlify"
    echo "3. Set build command: npm run build"
    echo "4. Set publish directory: build"
    echo "5. Deploy!"
    echo ""
    echo "🔗 Your site will be available at: https://rafal-electric.netlify.app"
else
    echo "❌ Build failed! Please check the errors above."
    exit 1
fi
