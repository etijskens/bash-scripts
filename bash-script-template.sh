#!/bin/bash
version="0.0.1"
#-------------------------------------------------------------------------------
# bash-script-template.sh
#
# Use this template as the beginning of a new script. Place a description of
# the script here.
#
# Change history: [Add new history entries as needed]
#
# 4.3.2021  Bert Tijskens   Creation of bash-script-template.sh.
#
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# BASH DOCUMENTATION
# Debugging Bash scripts:
#   https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_02_03.html
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# FUNCTIONS
#-------------------------------------------------------------------------------
# Help - Display help for this script.
Help()
{
  echo "Add description of the script functions here."
  echo
  echo "Syntax: bash-script-template.sh [-g|h|v|V]" "options:"
  echo "g Print the GPL license notification."
  echo "h  Print this Help."
  echo "v Verbose mode."
  echo "V Print software version and exit."
  echo
}
#-------------------------------------------------------------------------------
# CheckRoot - Check that this script is run as root. Emit an error message if
#             not.
CheckRoot()
{
if [ `id -u` != 0 ]
then
  echo "ERROR: You must be root user to run this program"
  exit
fi
}
#-------------------------------------------------------------------------------
# MAIN PROGRAM
#-------------------------------------------------------------------------------
# Initialize variables
option=""
verbose=0
msg="Hello world!"

# Process the input options. Add options as needed.

while getopts ":hvV" option; do
  case $option in
  # options that doe not execute the program body
    h) # display help
      Help
      exit
      ;;
    V) # print version number and exit
      echo "v$version"
      exit
      ;;
  # options that do execute the program body
    v) # verbose mode
      verbose=1
      ;;
    \?) # incorrect option
      exit
      ;;
  esac
done

# Program body
if [ $verbose ]
then
  echo "verbose = on "
fi

echo "$msg"