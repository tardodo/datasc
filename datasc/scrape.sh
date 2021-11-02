#!/bin/bash
name=`date +"%d"`
if [[ -e $name.html || -L $name.html ]] ; then
    i=1
    while [[ -e $name-$i.html || -L $name-$i.html ]] ; do
        let i++
    done
    name=$name-$i
fi
curl https://news.ycombinator.com/ > "$name".html
