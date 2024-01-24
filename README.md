# Readme - TP Shell/Linux

## Objectif du TP

La réalisation de deux scripts Shell. Ces scripts seront utilisés pour créer un ensemble de fichiers et organiser ces fichiers dans une structure de répertoires spécifique.

## Scripts Shell

### 1. Script de Création (`creation_script.sh`)

Le premier script, `creation_script.sh`, a pour tâche de créer un répertoire nommé "Repo_name" et de générer N fichiers vides. Chaque fichier doit être nommé selon le format 'prefix_ye_sar-month-day-hour-minute-second-millisecond.txt', où "prefix" est un paramètre à transmettre au script. Un écart de M millisecondes sépare la création de chaque paire de fichiers.

### 2. Script de Réorganisation (`reorganization_script.sh`)

Le deuxième script, `reorganization_script.sh`, parcourt le répertoire créé avec le premier script. Il crée un dossier "Root" contenant des sous-répertoires pour chaque préfixe de fichier, ainsi que des sous-répertoires pour l'année, le mois, le jour et l'heure.

Les fichiers sont déplacés dans le nouveau dossier avec un nouveau nom, suivant le format MinuteSecondeMilliseconde.dat (concaténation des trois éléments sans séparateur). Les fichiers sont également remplis avec l'ancien nom du fichier, son chemin et le nom du script qui l’a créé (3 lignes seulement dans le fichier).

Les autorisations des fichiers après la réorganisation sont modifiées de manière à ce que seul le propriétaire puisse voir leur contenu.

## Exécution des Scripts

1. Lancez le script `creation_script.sh` 9 fois avec les préfixes suivants :
   - DevOps : [git, terraform, aws]
   - Data : [spark, scala, gcp]
   - Fonctionnel : [spec, postman, sql]

2. Consultez le fichier `readme.pdf` pour plus d'informations sur l'exécution et les résultats attendus.

## Remarques

- Tout le travail doit être effectué exclusivement via le terminal.
- Le fichier `readme.pdf` contient des détails supplémentaires sur l'exécution et les résultats attendus.

*N'hésitez pas à consulter le fichier `readme.pdf` pour des instructions plus détaillées sur l'exécution des scripts et pour vérifier les résultats attendus.*
