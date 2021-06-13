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
git add -A
git add .
git commit -m "$msg"
git push origin main
