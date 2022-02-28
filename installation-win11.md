---
layout: page
title: "Installation Windows 11"
permalink: /installation-win11/
---

> ## Avec un Windows 11 (version 22000 ou plus)
> Windows 11 permet d'installer un linux complet (ubuntu) dans lequel il faudra alors installer quelques paquets (comme sur un linux standard).
> C'est la solution la plus simple sous windows (si le windows est assez récent), il faut :
> 
> 1. **installer ubuntu** sous "WSL2" sous windows
> 1. **installer les paquets dans ubuntu** [voir ci dessous](#aptinstall)
> 1. **installer quelques bibliothèques python** [voir ci dessous](#bibpip)
> 
{: .checklist}



# Installation pour un système d'exploitation **Windows 11**

## Installation de ubuntu avec « WSL2 » (Windows subsystème for linux)

Vous pouvez suivre les instructions du site d'ubuntu

- [la page d'origine en anglais](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#1-overview)
- IMPORTANT : une traduction simplifiée est disponible ci-dessous, référez vous aux captures d'écran du site ubuntu pour suivre.

### Étape 2 (Install WSL)

- Vous devez vérifier que votre windows 11 est 22000 ou plus.
  Vous pouvez le savoir avec « touche windows » (du clavier) puis tapper « système » (ou équivalent pour trouver les informations système)
- Activer la « fonctionalité » (machine virtuelle), si elle ne l'est pas et redémarrer
- Installer WSL avec le « microsoft store »

### Étape 3 (Download Ubuntu)

- Installer « Ubuntu » avec le « microsoft store »

### Étape 4 (Configure Ubuntu)

Ici on lance ubuntu à partir (« touche windows » et tapper ubuntu).

Il va, la première fois, créer un utilisateur sous dans ubuntu (dans linux), vous devez choisir le nom d'utilisateur et le mot de passe.
Ils peuvent/doivent être différents de vos identifiant windows, mais rappellez vous en bien.

Ensuite, une fois ubuntu démarré (le terminal bash est lancé), il faut lancer les commandes `sudo apt ........` proposées (qui vont s'assurer que ubuntu est à jour).
Tappez `y` (pour yes) quand/si il y a des questions.

### Étape 5 (Install and use GUI package)

C'est essentiellement pour tester et vérifier que cela fonctionne.
C'est bien de le faire mais ce n'est pas strictement nécessaire.

## Alternative à partir du terminal windows

Tout est à faire dans le « powershell » windows en tant qu'administrateur (« touche windows » tapper « power shell » et choisir « lancer en tant qu'administrateur »).

~~~
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Redémarrer ici

wsl --set-default-version 2
wsl --update
wsl --shutdown

wsl -d ubuntu
~~~


## Installer quelques paquets ubuntu nécessaires
{: #aptinstall}

Il est possible de suivre aussi les instructions sous linux, mais voici un résumé (et quelques éléments spécifiques à WSL).

Lancez un terminal ubuntu (« touche windows », tapper « ubuntu »), puis tappez les commandes suivantes :

~~~
sudo apt update
sudo apt install emacs
sudo apt install python3-numpy python3-matplotlib python3-pyqt5
sudo apt install zip unzip
~~~



## Installation de bibliothèques Python
{: #bibpip}

Normalement, ces installations peuvent être utiles (gain de temps en TP) mais aucune n'est normalemnet indispensable si vous avez suivi les instructions ci-dessus.

Voici une liste de commande qui permettent d'installer différents outils supplémentaires qui peuvent être utiles.
Les commandes suivantes, lancées dans un terminal, permettent de télécharger et installer des bibliothèques.

~~~
python3 -m pip install qtido          # évite de devoir télécharger qtido à chaque TP
python3 -m pip install -U qtido       # pour le mettre à jour si vous l'aviez installé il y a un moment

python3 -m pip install jupyter        # pour les "cahiers de laboratoire"
python3 -m pip install spyder         # éditeur/interpréteur python
python3 -m pip install graphviz       # pour l'outil pytoroad.py
~~~

Si vous ne les avez pas installé au niveau du système avec `apt install .......`, voici certaines commandes en plus.

~~~
python3 -m pip install pyqt5          # pour qtido

python3 -m pip install numpy          # pour le cours de L2 CHI/SPI
python3 -m pip install matplotlib     # pour le cours de L2 CHI/SPI
~~~

En cas de problème avec pip, tenter :

~~~
python3 -m pip install --upgrade pip
python3 -m pip install certifi
~~~


-----------------------
