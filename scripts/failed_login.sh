#!/usr/bin/env bash

echo -e "\n\n\n\n\nVerification des connexions..."

#Declaration des variables pour les afficher dans echo

a=$(grep "FAIL" auth.log | wc -l)
b=$(grep "FAIL" auth.log | cut -d';' -f4 | sort -u | wc -l)

echo -e "\nIl y a eu $a erreur de connexion de $b personnes distinctes"
echo "Voici les personnes qui ont eu des erreurs de connexions :"

#Commande pour montrer les personnes distinctement avec leur nombre d'Ã©chec de connexion

grep "FAIL" auth.log | cut -d';' -f4 | sort | uniq -c

#Selection de toutes les lignes oÃ¹ il y a eu des erreurs

echo -e "\nVoici toutes les lignes oÃ¹ se trouves les erreurs"
grep "FAIL" auth.log
