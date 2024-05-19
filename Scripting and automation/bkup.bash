#!/bin/bash

dir=$1 
bk_dir=$2


## Arguements missing
if [ "$#" -ne 2 ];then
    echo "Usage: bkup.bash <dir to backup> <Backup dir>"
    exit 1
fi

if [ ! -d "$dir" ];then
  echo "Error: Directory $dir does not exist."
  exit 1
fi


if [ ! -d "$bk_dir" ];then
  echo "Error: Directory $bk_dir does not exist."
  echo "Press /"1/" to create DIR:"
  read Uinput
  if [ $Uinput -eq "1" ];then
    mkdir bk_dir
  else
    exit 1
  fi

fi 


cDate=$(date +%Y-%m-%d)
tarfile="$dir""_$cDate"

#compress

tar -czvf "$tarfile.tar.gz" $dir 

mv $tarfile.tar.gz $bk_dir

echo "Backup Completed"


## Expantions

