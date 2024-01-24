#!/bin/bash

# Vérification des arguments
if [ $# -lt 1 ]; then
    echo "Usage: $0 <Repo_name>"
    exit 1
fi

Repo_name=$1
prefix=$2
# Nombre de fichiers à créer
N=$3
# Paramètres pour l'écart entre les fichiers (en millisecondes)
M=1000


#rm -r $Repo_name
#mkdir $Repo_name
#cd $Repo_name
#touch $(date +$1-%Y_%m_%d_%H_%M_%3N.txt)

# Fonction pour la creation des fichiers 
Auto_creation_file() {
    #touch $(date +$prefix-%Y_%m_%d_%H_%M_%3N.txt)
    for ((i = 1; i <= N; i++)); do
    #touch "$repo_name/$filename"
    touch "$Repo_name/$(date +$prefix-%Y_%m_%d_%H_%M_%3N.txt)"
    sleep 0.$M  # Attente pour l'écart entre les fichiers
done
}

# Vérifier si le répertoire existe
if [ -d "$Repo_name" ]; then
    echo "Le répertoire existe. Accès au répertoire existant."
    #cd $Repo_name
    Auto_creation_file
else
    # Création du répertoire s'il n'existe pas
    mkdir "$Repo_name"
    echo "Répertoire créé : $Repo_name"
    #cd $Repo_name
    Auto_creation_file
fi

#echo $(date +$1-%Y_%m_%d)
#echo $2