HOW TO UPDATE YOUR WEBSITE (2025 edition)

––––––––––––––––––––––––––––––––––
THE EASY WAY (Automated)
––––––––––––––––––––––––––––––––––

1. Open Terminal
2. Run:
cd ~/PostDoc_Site
./deploy_site.sh

This script will:
* Rebuild the site using hugo --cleanDestinationDir
* Push the updated site source code to your Website repo
* Push the rebuilt public folder to your live site repo dwiwad.github.io (force-pushed)

––––––––––––––––––––––––––––––––––
FINAL STEP (only needed if CNAME gets nuked)
––––––––––––––––––––––––––––––––––

1. Go to: https://github.com/dwiwad/dwiwad.github.io
2. Click Settings > Pages
3. Under Custom Domain, set:
dylanwiwad.com

Also make sure this file exists:
~/PostDoc_Site/public/CNAME
And that its contents are:
dylanwiwad.com

––––––––––––––––––––––––––––––––––
ONE-TIME SETUP (Already Done, But For Reference)
––––––––––––––––––––––––––––––––––

Make sure the public/ folder points to the live site repo:
- cd ~/PostDoc_Site/public  
- git remote set-url origin https://github.com/dwiwad/dwiwad.github.io.git  

Make sure the root site folder points to the Website source repo:
- cd ~/PostDoc_Site  
- git remote set-url origin https://github.com/dwiwad/Website.git  

––––––––––––––––––––––––––––––––––
YOU'RE DONE.
––––––––––––––––––––––––––––––––––
Everything builds and deploys locally from ~/PostDoc_Site.