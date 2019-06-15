#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
titles=("Boss" "Proffessor" "Operator" "Programmer" "Grunt" "Final Boss")
title_index=$((RANDOM % ${#titles[@]}))
mytitle=${titles[$title_index]}
title="Overlord"
myname=$USER
hostname=$(hostname)
Time=$(date +"%I:%M %P")
Day=$(date +"%A")
###############
# Main        #
###############

var=`cat <<EOF

Welcome to planet $hostname, "$mytitle $myname!"
it is $Time on $Day
EOF`

echo "$(cowsay $var)"
