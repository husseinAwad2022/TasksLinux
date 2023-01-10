#!/bin/bash

# Create tmp dir in home dir
mkdir ~/tmp

# Change into tmp dir
cd ~/tmp

# Create 5 sub dirs with names "training project_<index num>"
for i in {1..5}; do
  mkdir "training_project_$i"
  cd training_project_$i


  # Create 2 txt files
  touch "model_$i"_a.txt
  touch "module_$i"_b.txt

  # Add text to each file
  echo "Hello <$FIRST_NAME/$LAST_NAME> welcome to file $i.A" >> "model_$i"_a.txt
  echo "Hello <$FIRST_NAME/$LAST_NAME> welcome to file $i.B" >> "module_$i"_b.txt

  # Change back to tmp dir
  cd ..
done
