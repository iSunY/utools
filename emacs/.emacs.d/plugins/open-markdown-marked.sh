#!/bin/sh


if [ $1 ]; 
then
    open -a "/Applications/Setapp/Marked.app" "$(1)" ;
else
    open -a "/Applications/Setapp/Marked.app" ;
fi

