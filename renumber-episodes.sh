#!/bin/bash

W=$(dirname $(readlink -f $0))

set -e

cd "$W"
cd _episodes/

shopt -s nullglob # ignore wildcard that don't work below
ls {00..99}{a-,b-,c-,d-,-,w-,x-,y-,z-}*.md > ../,,episodes
shopt -u nullglob # restore

if [ $# == 0 ] ; then
    echo usage: $0 '[echo | go | git]'
    echo "(you can also pass a single current name and its new name)"
    echo 
    echo now running with "$0 echo" to preview the changes
    echo
    set -- echo
fi
echo "---------- begin"

if [ "$1" == "go" ] ; then
    PRE=""
else
    PRE="$1"
fi

rename_episode() {
    #echo DOING: $PRE mv $i $as
    $PRE mv $1 $2
    if [ "$PRE" != "echo" ] ; then
        sed -i -e "s/(${1%.md}/(${2%.md}/g" $(find .. -name _site -prune -and -type f -or -name \*.md)
    fi    
}

if [ $# == 3 ] ; then
    rename_episode $2 $3
    exit
fi

c=1
for i in $(cat ../,,episodes) ; do
    as=$(printf %02d $c)-$(echo $i | sed 's@^[0-9][0-9][a-z]\{0,1\}-@@g')
    if test "$i" != "$as" ; then
        rename_episode "$i" "$as"
    fi
    c=$(($c + 1))
done

echo "---------- end"
