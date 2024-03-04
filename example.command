#! /usr/bin/env zsh

webPages=()


#  for H-Net: 
pageBaseHnet="https://www.h-net.org/jobs/job_browse.php?category_id="

numCategoriesHnet=(9 12 104 25 29 32 46 50 82 99)

# Notes: 
# 9:  area studies 
# 12:  Asian history
# 104:  Chinese history
# 25:  contemporary history
# 29:  digital humanities
# 32:  east asia history
# 46: history education
# 50:  humanities
# 82:  public history
# 99:  world history


for i in $numCategoriesHnet; do
    webPages+=($pageBaseHnet$i)
done

#  for HigherEdJobs:

pageBaseHigherEd=(
    "https://www.higheredjobs.com/faculty/search.cfm?JobCat=204&CatName=Humanities" 
    
    "https://www.higheredjobs.com/faculty/search.cfm?JobCat=139&CatName=History" 
    
    "https://www.higheredjobs.com/search/advanced_action.cfm?Remote=&Keyword=digital&PosType=&InstType=&JobCat=&Region=0&SubRegions=&Metros=&OnlyTitle=0&JobCatType=&StartRow=-1&SortBy=1&NumJobs=25&filtercat=139&filtercat=204&CatType=3" 
    
    "https://www.higheredjobs.com/search/advanced_action.cfm?OnlyTitle=0&Keyword=chinese+history"
    
    "https://careers.historians.org/jobs/"
    
)
# Notes:
# 204:  humanities
# 139:  history
# 139&204:  history and humanities and digital*
# Chinese history

#  open all pages in safari:

webPages+=("${pageBaseHigherEd[@]}")

for i in $webPages; do
    open "$i"
done


printf "------All webpages opened---------\n"