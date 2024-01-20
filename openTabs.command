#! /usr/bin/env zsh

# list all webpage url in double quotes, separated by spaces:
# to add new urls, just add them to below the example url


webPages=(
    "https://www.h-net.org/jobs/job_browse.php?category_id=104"
    
)

#  open all pages in safari:

for i in $webPages; do
    open "$i"
done


printf "------All webpages opened---------\n"