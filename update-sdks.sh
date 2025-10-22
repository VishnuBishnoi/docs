#!/bin/bash

# Script to update SDK-specific content for Kotlin, React Native, and Web

# Update Kotlin SDK
echo "Updating Kotlin SDK..."
find kotlin -type f -name "*.mdx" -exec sed -i '' 's|/ios/|/kotlin/|g' {} +
find kotlin -type f -name "*.mdx" -exec sed -i '' 's|iOS SDK|Kotlin SDK|g' {} +
find kotlin -type f -name "*.mdx" -exec sed -i '' 's|iOS|Android|g' {} +
find kotlin -type f -name "*.mdx" -exec sed -i '' 's|Swift|Kotlin|g' {} +
find kotlin -type f -name "*.mdx" -exec sed -i '' 's|Xcode|Android Studio|g' {} +

# Update React Native SDK  
echo "Updating React Native SDK..."
find react-native -type f -name "*.mdx" -exec sed -i '' 's|/ios/|/react-native/|g' {} +
find react-native -type f -name "*.mdx" -exec sed -i '' 's|iOS SDK|React Native SDK|g' {} +
find react-native -type f -name "*.mdx" -exec sed -i '' 's|import UIKit|import React|g' {} +
find react-native -type f -name "*.mdx" -exec sed -i '' 's|Swift|JavaScript/TypeScript|g' {} +

# Update Web SDK
echo "Updating Web SDK..."
find web -type f -name "*.mdx" -exec sed -i '' 's|/ios/|/web/|g' {} +
find web -type f -name "*.mdx" -exec sed -i '' 's|iOS SDK|Web SDK|g' {} +
find web -type f -name "*.mdx" -exec sed -i '' 's|import UIKit|import Joyfill|g' {} +
find web -type f -name "*.mdx" -exec sed -i '' 's|Swift|JavaScript/TypeScript|g' {} +

echo "✅ SDK updates complete!"

