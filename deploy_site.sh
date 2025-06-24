#!/bin/bash

# === SETTINGS ===
DATE=$(date "+%Y-%m-%d %H:%M")
SRC_COMMIT_MSG="Update site source - $DATE"
DEPLOY_COMMIT_MSG="Deploy site update - $DATE"

echo "🧼 Rebuilding site..."
hugo --cleanDestinationDir || { echo "❌ Hugo build failed"; exit 1; }

# === SOURCE CODE UPDATE ===
echo "💾 Updating source repo (Website)..."
git add .
git commit -m "$SRC_COMMIT_MSG"
git push origin master || { echo "❌ Failed to push source repo"; exit 1; }

# === LIVE SITE DEPLOY ===
echo "🚀 Deploying site to dwiwad.github.io..."
cd public || { echo "❌ Failed to enter public/ directory"; exit 1; }

git add -A
git commit -m "$DEPLOY_COMMIT_MSG"
git push origin master --force || { echo "❌ Failed to push public repo"; exit 1; }

cd ..  # return to main repo
echo "✅ All done! Live at https://dwiwad.github.io"
