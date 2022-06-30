#!/bin/bash

# this is a programming logic test I took for an SRE opportunity
# the test description is available in README file

# full path to directory that contains the files to be processed
directoryName="${1}"

# get the list of files and put them inside the fileNames.txt
find "${directoryName}/" -maxdepth 1 -type f -not -path '*/\.*'  > "fileNames.txt"

sourceFileCount=$(wc -l "fileNames.txt")
aux=$(echo "$sourceFileCount" | awk -F " " '{print $1}')
echo "==== Total files to move ${aux} ===="

fileCount=0
while IFS= read -r line
do
	#echo "Debug $line"
    #echo "$line"
	baseFilename=$(basename "${line}")
    
	fileYear=$(echo "${baseFilename}" | awk -F  "." '/1/ {print substr($2,5,2)}')
	fileMonth=$(echo "${baseFilename}" | awk -F  "." '/1/ {print substr($2,3,2)}')
	fileDay=$(echo "${baseFilename}" | awk -F  "." '/1/ {print substr($2,1,2)}')
	fileCode=$(echo "${baseFilename}" | awk -F  "." '/1/ {print substr($1,1,2)}')
	#echo "Debug directory to create: ${fileYear}/${fileMonth}/${fileDay}/${fileCode}"
	newDir=${fileYear}/${fileMonth}/${fileDay}/${fileCode}

	mkdir -v -p "${directoryName}/${newDir}"
    #Debug behavior
    cp "${line}" "${directoryName}/${newDir}/" 
    # Production behavior
    #mv "${line}" "${directoryName}/${newDir}/"
    ((fileCount+=1))
done < "fileNames.txt"

echo "==== Total Files Moved ${fileCount} ===="
