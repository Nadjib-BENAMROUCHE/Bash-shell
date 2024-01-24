#!/bin/bash

# Vérification des arguments
if [ $# -lt 1 ]; then
    echo "Usage: $0 <Repo_name>"
    exit 1
fi

# Assignation des arguments
repo_name=$1

# Création du dossier "Root"
root_dir="Root"
mkdir -p "$root_dir"

# Parcourir le répertoire et réorganiser les fichiers
for file in "$repo_name"/*.txt; do
    prefix=$(echo "$file" | cut -d'-' -f1)
    year=$(date -r "$file" +"%Y")
    month=$(date -r "$file" +"%m")
    day=$(date -r "$file" +"%d")
    hour=$(date -r "$file" +"%H")

    # Création des répertoires nécessaires
    target_dir="$root_dir/$repo_name/$prefix/$year/$month/$day/$hour"
    mkdir -p "$target_dir"

    # Création du nouveau nom de fichier
    minute_second_millisecond=$(date -r "$file" +"%M%S%N")
    new_filename="$target_dir/$minute_second_millisecond.dat"

    # Copie du fichier et modification des autorisations
    cp "$file" "$new_filename"
    chmod 0700 "$new_filename"

    # Ajout des informations dans le fichier
    echo "Ancien nom : $file" > "$new_filename"
    echo "Chemin : $new_filename" >> "$new_filename"
    echo "Script créateur : reorganization_script.sh" >> "$new_filename"
done

echo "Réorganisation des fichiers terminée."
