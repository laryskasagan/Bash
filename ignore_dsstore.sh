#!/bin/bash

# Check if .gitignore exists, if not, create it
if [ ! -f .gitignore ]; then
  touch .gitignore
  echo ".gitignore file created."
fi

# Add .DS_Store to .gitignore if it's not already there
if ! grep -q ".DS_Store" .gitignore; then
  echo ".DS_Store" >> .gitignore
  echo ".DS_Store has been added to .gitignore"
else
  echo ".DS_Store is already in .gitignore"
fi

# Optional: Show .gitignore content for confirmation
echo "Here is the current .gitignore content:"
cat .gitignore

