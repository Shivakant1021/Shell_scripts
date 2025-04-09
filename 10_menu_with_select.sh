#!/bin/bash




PS3="Choose an option: "
select opt in "Show Date" "List Files" "Who Am I" "Exit"; do
  case $REPLY in
    1) date ;;
    2) ls ;;
    3) whoami ;;
    4) break ;;
    *) echo "Invalid option." ;;
  esac
done




