# only run this
# if you are running with multiple devices try pulling before you push
#!/bin/sh

# If a command fails then the deploy stops
set -e

msg="Publishing to main docs"
if [ -n "$*" ]; then
   msg="$*"
fi  

rm -rf docs
hugo 
cp CNAME docs/
#force add all files when needed

# Prompt the user for their Git username
read -p "Enter your Git username: " git_username

# Validate the username (optional)
if [[ -z "$git_username" ]]; then
  echo "Error: Git username cannot be empty."
  exit 1
fi

#git add -A
git add .
git commit -m "$msg"
#--force when you need to force your push
git push origin main



# You can add more validation checks here, such as:
# - Checking if the username exists in a specific list
# - Enforcing a specific format for the username

# Now you can use the 'git_username' variable to push content
# For example:
git push origin main --author="$git_username"
