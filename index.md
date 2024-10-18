# Première installation pour les ordis de prêt en Master MAS

## Installation Ubuntu LTS

L'OS Ubuntu est déjà préinstallé avec un utilisateur `mas` dont le mot de passe vous sera fourni pendant la séance d'installation.

_Si Ubuntu vous propose de mettre à jour votre système, ne pas exécuter cette mise à jour, c'est la DSI qui s'occupera des mises à jour pour vous._

Il vous reste à :
1. Modifier le mot de passe de l'utilisateur `mas`
2. Vous connecter à eduroam avec l'identité :
    * nom d'utilisateur : `NUMETU@univ-rennes2.fr` où `NUMETU` est votre numéro d'étudiant
    * mot de passe : votre mot de passe Sésame UR2
3. Vérifier que l'installation des _packages_ R s'est correctement déroulée : pour cela
    1. ouvrez un Terminal et exécutez la commande : 
    ```bash
    wget https://rtavenar.github.io/install_portables_master_mas/assets/package.R
    ```
    2. ouvrez RStudio depuis la liste des applications et exécutez dans RStudio le script `package.R` qui doit être dans votre dossier _home_.

## Prise en main des logiciels installés

* Pour coder en Python dans VS Code
    * Lancer VS Code **depuis Anaconda Navigator**
    * Dans l'onglet "Extensions", installer l'extension "Python" (éditée par Microsoft) si elle n'est pas déjà installée
* Prise en main de RStudio
    * Lancer RStudio **depuis la liste des applications (pas depuis Anaconda Navigator)**
