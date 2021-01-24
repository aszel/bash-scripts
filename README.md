# Bash Scripts

## jekyll-build-copy-and-deploy.sh
This script performs a jekyll build and copies the static output into another directory.\
Then the static stuff gets pushed to Github.

settings
```
CODE_DIRECTORY="/home/martin/Code/"
PROJECT="MartinsWebsite"
BUILD_DIRECTORY="_site"
STATIC_CONTENT_DIRECTORY="MartinsWebsite-static"
```

run
```
sh /home/martin/Code/scripts/jekyll-build-copy-and-deploy.sh
```

required structure
```
├── MartinsWebsite
│   ├── README.md
│   └── _site
│       ├── source files...
├── MartinsWebsite-static
│   ├── destination...

```
