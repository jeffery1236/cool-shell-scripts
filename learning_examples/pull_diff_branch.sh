#!/bin/bash
if [ "$#" -ne 1 ]
then
   	echo "please input branch name"
	exit
else
	curr_branch=`git symbolic-ref -q HEAD | cut -d "/" -f3`
	echo $curr_branch
	# branch_ref_arr=(${curr_branch//;/ })
	# echo ${branch_ref_arr[2]}

	git checkout $1
	git pull
	git checkout ${branch_ref_arr[2]}
fi
