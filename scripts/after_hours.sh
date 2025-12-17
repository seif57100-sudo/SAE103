# Vérification des arguments
if [ "$#" -ne 1 ]; then
# on met le fichier .log à analyser en argument
    echo "Usage: $0 <fichier_log>"
    exit 1
fi

#LOG_FILE est le "premier argument de la commande"
LOG_FILE="$1"

echo -e "\n=== ACTIVITÉ HORS HORAIRES (Avant 08h00 / Après 18h00) ==="
echo "Format: Date ; Heure ; PC ; Utilisateur ; IP;Statut "
echo -e "----------------------------------------------------------\n"

# 1. Filtrage avec GREP (Regex étendue)
# On cherche le séparateur ';' suivi des heures ciblées :
# 00 à 07 (Matin) OU 18 à 19 (Soir) OU 20 à 23 (Nuit)
grep -E ";0[0-7]:|;1[8-9]:|;2[0-3]:" "$LOG_FILE" | sort

echo -e "\n=== UTILISATEURS SUSPECTS ==="

# 2. Analyse statistique sans awk
# grep : Filtre les lignes
# cut  : Extrait la 4ème colonne (Utilisateur) via le délimiteur ';'
# sort : Regroupe les noms identiques (nécessaire avant uniq)
# uniq : Compte les occurrences (-c)
# sort : Trie par fréquence décroissante (-nr)
grep -E ";0[0-7]:|;1[8-9]:|;2[0-3]:" "$LOG_FILE" | cut -d';' -f4 | sort | uniq -c | sort -nr

echo -e "\n=== DERNIÈRE TENTATIVE DÉTECTÉE ==="
# -e pour regex etendu
# Affiche uniquement la toute dernière ligne trouvée par le filtre
grep -E ";0[0-7]:|;1[8-9]:|;2[0-3]:" "$LOG_FILE" | tail -n 1
