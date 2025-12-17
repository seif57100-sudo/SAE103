#!/usr/bin/env bash

#Creation d'une variable a lu par l'utilisateur

read -p "Combien des adresses IP les plus utilisÃ©s souhaitez-vous afficher : " a

#affichages des a adresses ip les plus utilisÃ©

grep "FAIL" auth.log | cut -d';' -f5 | sort | uniq -c | sort -r | head -n $a
