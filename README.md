# SAÉ 1.03 — Installation d’un poste pour le développement

## Analyse automatisée de logs par scripts Bash

### 🔔 Informations importantes avant de commencer

#### 📌 Étape obligatoire

Rejoindre un groupe de travail dans la section "Je choisis mon groupe"  
➜ 1 groupe = 4 étudiants

Aucun travail ne débutera officiellement tant que vos groupes ne sont pas constitués.

---

### 🏢 Contexte professionnel

Vous intégrez l’équipe informatique d’une entreprise spécialisée dans le développement logiciel.  
Le responsable sécurité (RSSI) vous confie une mission : analyser automatiquement différents journaux système et de développement afin d’obtenir une vision claire de l’activité des postes.

### Votre travail consistera à :

- Installer un poste Debian 13 complet pour le développement
- Analyser des fichiers de logs fournis
- Automatiser ces analyses via plusieurs scripts Bash
- Générer un rapport final de synthèse et présenter vos travaux à l’oral

Ce projet est réalisé dans le cadre de la SAÉ 1.03 — Installation d’un poste pour le développement.

---

## 📌 Organisation du projet

| Critère                   | Valeur                                |
|---------------------------|---------------------------------------|
| Travail par groupe          | 4 étudiants                           |
| Durée estimée              | 4 à 5 semaines                        |
| Livrables attendus         | Scripts Bash + menu global + rapport + VM OVA |
| Soutenance finale          | 15 minutes par groupe                |

---

### ⚠ Tous les scripts listés ci-dessous sont obligatoires  
### ⚠ L’utilisation de awk est interdite dans l’ensemble du projet

---

## 🛠 1) Installation de l’environnement de travail

Vous devrez disposer d’une VM Debian 13 sous VirtualBox, installée soit :

| Option                             | Lieu                                |
|------------------------------------|-------------------------------------|
| 💻 Sur votre ordinateur personnel  | Installation libre                  |
| 🏫 En salle F36                    | Via VirtualBox sous Fedora déjà disponible |

- Tous les scripts devront fonctionner dans cette VM sans modification.  
- Ce sera un livrable → vous devrez exporter la VM en OVA.

---

## 🗂 2) Fichiers de logs fournis

Les fichiers seront mis à disposition sur Arche Moodle.  
Tous sont au format ; (point-virgule séparateur).

| Nom du fichier                | Contenu                                         |
|-------------------------------|-------------------------------------------------|
| auth.log                      | Activité de connexions (OK/FAIL)                |
| auth_jour1.log & auth_jour2.log| Deux journées distinctes (comparaison)          |
| dev-tools.log                 | Outils installés et utilisés sur les postes    |
| web-dev.log                   | Sites web de développement consultés           |
| installations_incomplet.log   | Journal incomplet à compléter par vos soins    |

#### 📌 Consigne : vous devez ajouter au moins 5 lignes dans `installations_incomplet.log`.

---

## 🧠 3) Travail à produire — Scripts Bash obligatoires

Vous devez écrire 7 scripts Bash. Chacun doit être commenté, lisible, optimisé, et s’exécuter depuis la ligne de commande.

🟥 **Interdit** : utilisation de `awk`  
🟩 **Autres commandes fortement attendues** : `grep`, `cut`, `sort`, `uniq`, `wc`, `head`, `tail`

### 🔥 Scripts à rédiger

| Nom du script                    | Fonction attendue                                                                  |
|-----------------------------------|-------------------------------------------------------------------------------------|
| `failed_login.sh`                 | Extraire toutes les lignes *FAIL* + compter le total + afficher les utilisateurs concernés |
| `top_ip.sh <log> <N>`             | Afficher les N adresses IP les plus actives                                        |
| `after_hours.sh`                  | Détecter les connexions hors plages 08h–18h                                         |
| `stats_globales.sh`              | Donner un résumé chiffré global du fichier `auth.log`                               |
| `compare_jours.sh <fichier1> <fichier2>` | Comparaison entre deux journées → lignes présentes uniquement dans l’un ou l’autre |
| `report.sh`                      | Générer un rapport Markdown minimal à partir de tous les logs                      |
| `menu.sh`                        | Afficher un menu permettant de lancer tous les scripts précédents                 |

---

#### 📌 Chaque script doit pouvoir être lancé individuellement et via `menu.sh`

### Exemples :

```bash
./failed_login.sh auth.log
./top_ip.sh auth.log 10
./compare_jours.sh auth_jour1.log auth_jour2.log
./menu.sh
````

---

## 📄 4) Rapport Markdown — plan imposé

Votre rapport final devra respecter exactement la structure suivante :

1. Contexte & objectif du projet
2. Présentation des logs fournis
3. Scripts développés + commandes clés utilisées
4. Résultats et extraits de sortie
5. Analyse & interprétation
6. Limites et pistes d’amélioration
7. Répartition du travail dans le groupe

**Format attendu** → `.md`

---

## 🎤 5) Soutenance finale — 15 minutes

### Déroulement précis :

| Phase                                       | Durée     |
| ------------------------------------------- | --------- |
| Démonstration live des scripts              | 7 minutes |
| Explication d’un script tiré au sort        | 6 minutes |
| Transition / installation du groupe suivant | 2 minutes |

* Chaque membre doit pouvoir expliquer son travail ligne par ligne.
* Toute incompréhension flagrante réduira la note.

---

## 🔄 Mise à jour & extensions du sujet

Ce sujet est vivant et évolutif.
De nouvelles consignes pourront être ajoutées au fil des semaines, notamment sur les parties avancées de l’évaluation.

### 📌 Vous êtes donc invités à revenir régulièrement consulter la page Arche afin de suivre les ajouts et modifications.

---

## 📘 À venir prochainement

Une extension du travail vous sera donnée concernant :

* L’installation et l’utilisation de vos scripts sur une VM GitHub (Codespaces Debian).

Vous devrez alors :

* Héberger vos scripts sur **GitHub**
* Exécuter et maintenir une version fonctionnelle sur **VM GitHub**
* Conserver également une version opérationnelle sous **VirtualBox**

Cette nouvelle consigne viendra compléter le projet, sans remplacer la VM VirtualBox actuellement obligatoire.

### En résumé :

| Environnement            | Statut actuel                                     |
| ------------------------ | ------------------------------------------------- |
| Debian VirtualBox        | Obligatoire — scripts exécutables & livrés en OVA |
| GitHub Codespaces Debian | À venir — sera ajouté en section complémentaire   |

Lisez bien les annonces : elles indiqueront précisément quand cette nouvelle étape sera activée.

```

```
