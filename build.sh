#!/bin/bash

# Build script to replace environment variables in HTML file
# This script substitutes {{VARIABLE}} placeholders with actual values

echo "🔧 Building production HTML with environment variables..."

# Create public directory if it doesn't exist
mkdir -p public

# Copy the template HTML file and replace placeholders
cp agenticAI.html public/index.html

# Replace Firebase config placeholders with environment variables
sed -i "s/{{VITE_FIREBASE_API_KEY}}/$VITE_FIREBASE_API_KEY/g" public/index.html
sed -i "s/{{VITE_FIREBASE_AUTH_DOMAIN}}/$VITE_FIREBASE_AUTH_DOMAIN/g" public/index.html
sed -i "s/{{VITE_FIREBASE_PROJECT_ID}}/$VITE_FIREBASE_PROJECT_ID/g" public/index.html
sed -i "s/{{VITE_FIREBASE_STORAGE_BUCKET}}/$VITE_FIREBASE_STORAGE_BUCKET/g" public/index.html
sed -i "s/{{VITE_FIREBASE_MESSAGING_SENDER_ID}}/$VITE_FIREBASE_MESSAGING_SENDER_ID/g" public/index.html
sed -i "s/{{VITE_FIREBASE_APP_ID}}/$VITE_FIREBASE_APP_ID/g" public/index.html

echo "✅ Build completed! Firebase config injected into public/index.html"