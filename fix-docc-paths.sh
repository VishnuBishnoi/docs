#!/bin/bash

# Script to fix DocC base paths for Mintlify hosting
# This patches all HTML files to use /sdk/ios/ as the base path

echo "🔧 Fixing DocC base paths for /sdk/ios/ hosting..."

cd /Users/vishnudutt/Docs/mintlify-joyfill-docs/sdk/ios

# Fix paths in all HTML files
find . -name "*.html" -type f -exec sed -i '' \
  -e 's|href="/Joyfill/|href="/sdk/ios/Joyfill/|g' \
  -e 's|src="/Joyfill/|src="/sdk/ios/Joyfill/|g' \
  -e 's|var baseUrl = "/Joyfill/"|var baseUrl = "/sdk/ios/Joyfill/"|g' \
  -e 's|href="/JoyfillModel/|href="/sdk/ios/JoyfillModel/|g' \
  -e 's|src="/JoyfillModel/|src="/sdk/ios/JoyfillModel/|g' \
  -e 's|var baseUrl = "/JoyfillModel/"|var baseUrl = "/sdk/ios/JoyfillModel/"|g' \
  -e 's|href="/JoyfillFormulas/|href="/sdk/ios/JoyfillFormulas/|g' \
  -e 's|src="/JoyfillFormulas/|src="/sdk/ios/JoyfillFormulas/|g' \
  -e 's|var baseUrl = "/JoyfillFormulas/"|var baseUrl = "/sdk/ios/JoyfillFormulas/"|g' \
  -e 's|href="/JoyfillAPIService/|href="/sdk/ios/JoyfillAPIService/|g' \
  -e 's|src="/JoyfillAPIService/|src="/sdk/ios/JoyfillAPIService/|g' \
  -e 's|var baseUrl = "/JoyfillAPIService/"|var baseUrl = "/sdk/ios/JoyfillAPIService/"|g' \
  {} \;

# Fix paths in JSON files
find . -name "*.json" -type f -exec sed -i '' \
  -e 's|"/Joyfill/|"/sdk/ios/Joyfill/|g' \
  -e 's|"/JoyfillModel/|"/sdk/ios/JoyfillModel/|g' \
  -e 's|"/JoyfillFormulas/|"/sdk/ios/JoyfillFormulas/|g' \
  -e 's|"/JoyfillAPIService/|"/sdk/ios/JoyfillAPIService/|g' \
  {} \;

echo "✅ Done! All paths have been updated to use /sdk/ios/ base path"
echo ""
echo "Test the documentation at:"
echo "  http://localhost:3002/sdk/ios/Joyfill/documentation/joyfill/"
echo "  http://localhost:3002/sdk/ios/JoyfillModel/documentation/joyfillmodel/"

