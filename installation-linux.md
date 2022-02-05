---
layout: page
title: "Installation sous Linux"
permalink: /installation-linux/
---

> ## Avec un système linux
> Normalement beaucoup de choses sont déjà disponibles :
> 
> 1. Le terminal et bash sont installés par défaut.
> 1. python3 est probablement aussi installé (mais il se peut qu'un ancien Python2 soit aussi installé, donc il faut bien utiliser la commande python3)
> 1. emacs est probablement installé ou installable avec le gestionnaire de paquets de la distribution linux.
> 1. il fautdra probablement **installer des bibliothèques** (pyqt et/ou numpy etc) dans python [voir la section dédiée](#bibpip)
> 1. les commandes zip/unzip sont probablement déjà installées
> 
{: .checklist}



# Installation pour un système d'exploitation **Linux**

Des <span class="ico-vid">🎥</span> [vidéos][playlist] sont disponible pour illustrer l'installation.
Des liens vers des vidéos spécifiques sont disponibles ci dessous.

AVANT TOUT, vérifier la version de votre windows (64 bits ou plus rarement, si l'ordinateur est ancien, 32 bits).

<span class="ico-vid">🎥</span> Vidéos : [Version-Windows]

## Interpréteur de commande Bash sous Linux

Il est installé par défaut.
Il suffit de trouver comment lancer un "terminal" depuis votre Linux.


## Installation de paquets pour python sous ubuntu (et equivalent)

Pour installer python3 et les autres choses nécessaires, il est possible de lancer :

~~~
sudo apt update
sudo apt install python3-pyqt5 python3-numpy python3-matplotlib
~~~

### Emacs

Soit il est déjà installé, soit vous pouvez l'installer avec votre gestionnaire de paquets.
Par exemple avec :

~~~
sudo apt install emacs
~~~

## Alternatives à Emacs
{: #alteditor}

À la place d'emacs, il est possible d'utiliser, pour éditer du Python :

- [VS Code](https://code.visualstudio.com/Download), un éditeur complet
- [https://atom.io/](https://atom.io/), un éditeur léger et rapide,
- [PyCharm](https://www.jetbrains.com/pycharm/download/#section=linux), en version gratuite « community », un éditeur complet et plein de fonctionalités.
- Spyder, qui peu s'installer après avoir installé python avec la commande `pip3 install spyder`


## Installation de bibliothèques Python
{: #bibpip}

Voici une liste de commande qui permettent d'installer différents outils supplémentaires qui peuvent être utiles.
Les commandes suivantes, lancées dans un terminal, permettent de télécharger et installer des bibliothèques.

~~~
python3 -m pip install qtido          # évite de devoir télécharger qtido à chaque TP

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




## Details pour l'installation de Python3 sous Linux

Le cours utilise python en version 3.
Il faut donc installer cette version.
Vous pouvez très probablement utiliser votre gestionnaire de paquets.
Il suffit d'installer les paquets suivants :

- python3
- python3-pyqt5
- python3-numpy

Avec certains gestionnaires de paquets cela peut se faire avec la commande :

    sudo apt-get install python3 python3-pyqt5 python3-numpy

Il peut aussi être nécessaire de lancer ensuite la commande (si vous avez un crash inhabituel quand vous lancer un programme utilisant qtido) :

    sudo pip3 install pyqt5

Si votre gestionnaire de paquets ne vous permet pas l'installation des choses ci-dessus, se reporter aux instructions « [Python3 sous Windows](#pywin) ».

### Python3 sur Raspberry Pi

Le Raspberry Pi est en fait un ordinateur sous Linux.
Vérifiez que le Raspberry Pi a bien accès à internet et suivez les instructions pour Linux (juste au dessus).





-----------------------
