# Première installation pour les ordis de prêt en Master MAS

## Étape 1 : installation Ubuntu LTS

* Installation à partir de la clef USB bootable fournie
* Diviser le disque dur en 2 partitions : une partition pour l'OS, une pour les données

## Étape 2 : installation des logiciels de base

Suivez les étapes suivantes (certaines peuvent prendre du temps), en copiant le code ci-dessous dans un Terminal :

```bash
sudo snap install code --classic
mkdir softs && cd softs

wget https://repo.anaconda.com/miniconda/Miniconda3-py310_23.1.0-1-Linux-x86_64.sh && bash Miniconda3-py310_23.1.0-1-Linux-x86_64.sh
conda update -n base -c defaults conda
conda install -n base conda-libmamba-solver
conda config --set solver libmamba

wget ..../environment.yml
conda env create --name env_mas -f environment.yml
echo "\n\nconda activate env_mas" >> ~/.bashrc

sudo apt-get install texlive
```

## Étape 3 : configuration et prise en main des logiciels installés

* Configurer VS Code
    * Lancer VS Code
    * Dans l'onglet "Extensions", installer l'extension "Python" (éditée par Microsoft)
    * **TODO**: Sélectionner le bon environnement dans VSCode
* Configurer RStudio
    * **TODO**: Demander à Laurent les instructions
* Gestion des fichiers
    * **TODO**: instructions pour sauvegarder ses documents au bon endroit
* Installation de logiciels supplémentaires
    * Présentation de la bibliothèque logicielle Ubuntu
