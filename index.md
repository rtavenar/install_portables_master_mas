# Première installation pour les ordis de prêt en Master MAS

## Étape 1 : installation Ubuntu LTS

L'OS Ubuntu est déjà préinstallé avec un utilisateur `mas` dont le mot de passe vous sera fourni pendant la séance d'installation.

Il vous reste à :
* créer un nouvel utilisateur (et choisir son mot de passe)
* vous connecter avec cet utilisateur
* configurer le WiFi eduroam (`NUMETUDIANT@univ-rennes2.fr` / mot de passe étudiant)
* Modifier le nom de votre machine sur le réseau :
    1. `sudo nano /etc/hostname` -> remplacer le nom de host par le `UCxxxxxx` avec le numéro inscrit sous votre ordinateur
    2. `sudo nano /etc/hosts` -> remplacer toutes les occurrences du nom de host par le `UCxxxxxx` avec le numéro inscrit sous votre ordinateur
    3. redémarrer votre ordinateur
* Mettre à jour les packages Ubuntu :
    ```bash
    sudo snap refresh
    ```

## Étape 2 : installation des logiciels de base

Exécutez le code ci-dessous ligne à ligne dans un Terminal :

```bash
# Installation de VS Code
sudo snap install code --classic

# Installation de Miniconda
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-py310_23.1.0-1-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh
```

À ce point de l'installation, vous devez fermer le terminal ouvert, puis en ouvrir un nouveau.

```bash
# Création d'un environnement conda fonctionnel
conda update -n base -c defaults conda
conda install -n base conda-libmamba-solver
conda config --set solver libmamba

wget https://rtavenar.github.io/install_portables_master_mas/assets/mas.yml
sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
conda install anaconda-navigator
```

La fin de l'installation de votre environnement `conda` va se dérouler dans `anaconda-navigator`. Lancez ce programme en entrant la commande `anaconda-navigator` dans un terminal, puis créez un nouvel environnement en important le fichier `mas.yml` qui se trouve dans votre dossier personnel (répertoire "home").

Enfin, pour installer une version récente de R et RStudio, exécutez les lignes suivantes :

```bash
sudo apt update -qq
sudo apt install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt install --no-install-recommends r-base
sudo apt install libgdal-dev texlive texlive-xetex libssl-dev libcurl4-openssl-dev unixodbc-dev libxml2-dev libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev

wget https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.06.2-561-amd64.deb
sudo dpkg -i rstudio-2023.06.2-561-amd64.deb
```

```bash
echo "\n\nconda activate mas" >> ~/.bashrc
echo "\n\nconda activate mas" >> ~/.zshrc
```

## Étape 3 : configuration et prise en main des logiciels installés

* Configuration de VS Code
    * Lancer VS Code **depuis Anaconda Navigator**
    * Dans l'onglet "Extensions", installer l'extension "Python" (éditée par Microsoft) si elle n'est pas déjà installée
* Prise en main de RStudio
    * Lancer RStudio **depuis la liste des applications (pas depuis Anaconda Navigator)**
* Gestion des fichiers
* Installation de logiciels supplémentaires
    * Présentation de la bibliothèque logicielle Ubuntu
* Ajout d'un raccourci vers Anaconda sur le bureau: