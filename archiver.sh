#!/bin/bash
#
# Data reading script
#
if [ $# -ne 2 ]; then
  echo "Incorrect syntax!";
  echo "Type '"$0"' followed by the path to the directory that you would like to archive, leave an empty
space and type the name (and path) of the archive the will be created."
  echo "For example: '"$0" /home/$USER/Documents /home/$USER/backup.tar.gz' "
  exit 1;
fi

#tar -zcf $2 $1

dir=$1
file=$2

if [ -d "$dir" ]; then
  :
  else
  echo "The directory '$dir' does not exist."
  echo "Please check if the provided path is correct."
  exit 1;
fi

if [ -f "$file" ]; then
  echo "File with name '$file' already exists."
  echo "Please specify different file name or path."
  exit 1;
fi