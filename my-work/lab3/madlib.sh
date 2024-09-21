#!/bin/bash


clear 
echo "Let's build a mad-lib!"

read -p "1. Name an animal: " NOUN1
read -p "2. Name actions you would do at a rave: " VERB1
read -p "3. Describe the smells at a boiler room set: " ADJECTIVE1
read -p "4. Name a DJ: " NOUN2
read -p "5. Describe how mac and cheese tastes: " ADJECTIVE2
read -p "6. Name actions you might take during a walk at night: " VERB2
read -p "7. Name a boujee store: " NOUN3
read -p "8. Describe how a lime tastes: " ADJECTIVE3

echo "Once, there was a small $NOUN1 who liked to $VERB2 during the night."
echo "During the night the $NOUN1 saw $NOUN2, who was very $ADJECTIVE1."
echo "He next went to party filled with $VERB2 -ing which made him feel $ADJECTIVE2"
echo "Finally he ended the night by have a very $ADJECTIVE3 conversation at a $NOUN3."




