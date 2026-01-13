#!/bin/bash
# Deploy A8C Stories to GitHub Pages
# Repository: https://github.com/divydovy/a8cstories

set -e

echo "🚀 Deploying A8C Stories..."
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
    git remote add origin https://github.com/divydovy/a8cstories.git
fi

# Stage all files
echo "📝 Staging files..."
git add .

# Commit
echo "💾 Creating commit..."
read -p "Commit message (or press Enter for default): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Update A8C Stories"
fi
git commit -m "$commit_msg"

# Push
echo "⬆️  Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Deployment complete!"
echo ""
echo "📍 Your site will be live at:"
echo "   https://divydovy.github.io/a8cstories/"
echo ""
echo "⏱️  GitHub Pages builds in 1-2 minutes"
echo ""
echo "Next steps:"
echo "1. Go to https://github.com/divydovy/a8cstories/settings/pages"
echo "2. Set Source to: main branch, /docs folder"
echo "3. Click Save"
echo "4. Wait 1-2 minutes and visit your site!"
