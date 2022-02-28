---
layout: page
title: "Installation MacOS"
permalink: /installation-macos/
---

> ## Avec un MacOS
> Normalement beaucoup de choses sont déjà disponibles, voici quelques éléments :
> 
> 1. Le terminal et bash sont installés par défaut.
> 1. Il faut **installer emacs** ou un autre éditeur de texte ([voir ci dessous](#emacsmacos))
> 1. Il faut **installer python** [voir ci dessous](#pymacos), mais il est peut être déjà installé pour différentes raisons
> 1. il fautdra probablement **installer des bibliothèques** (pyqt et/ou numpy etc) dans python [voir la section dédiée](#bibpip)
> 1. les commandes zip/unzip sont probablement déjà installées
> 
{: .checklist}


## Interpréteur de commande Bash sous Mac

Il est installé par défaut.
Il suffit de trouver comment lancer un "terminal" depuis votre Mac.

## Éditeur de texte sous Mac

Dans les cours/tp, nous montrons « emacs » comme éditeur de texte.
Vous pouvez aussi essayer d'autres éditeurs, voir « [Alternatives à Emacs](#alteditor) ».

### Emacs
{: #emacsmacos}

Suivez les instructions (en anglais) sur [https://wikemacs.org/wiki/Installing_Emacs_on_OS_X](https://wikemacs.org/wiki/Installing_Emacs_on_OS_X) et, en cas de problème, utilisez un autre éditeur de texte ou demandez de l'aide à vos enseignants.

### Alternatives à Emacs
{: #alteditor}

À la place d'emacs, il est possible d'utiliser, pour éditer du Python :

- [VS Code](https://code.visualstudio.com/Download), un éditeur complet
- [https://atom.io/](https://atom.io/), un éditeur léger et rapide,
- [PyCharm](https://www.jetbrains.com/pycharm/download/#section=linux), en version gratuite « community », un éditeur complet et plein de fonctionalités.
- Spyder, qui peu s'installer après avoir installé python avec la commande `pip3 install spyder`


## Python3 sous Mac
{: #pymacos}

Il est recommandé de suivre les instructions « [Python3 sous Windows]({{page.root}}/installation-winold/#pywin) » en prenant bien l'installateur pour MacOS.

## Installation de bibliothèques Python
{: #bibpip}

Voici une liste de commande qui permettent d'installer différents outils et bibliothèques Python utilisée dans les cours ou qui peuvent être utiles.
Les commandes suivantes, lancées dans un terminal, permettent de télécharger et installer des bibliothèques.

~~~
python3 -m pip install pyqt5          # pour qtido
python3 -m pip install qtido          # évite de devoir télécharger qtido à chaque TP
python3 -m pip install -U qtido       # pour le mettre à jour si vous l'aviez installé il y a un moment

python3 -m pip install numpy          # pour le cours de L2 CHI/SPI
python3 -m pip install matplotlib     # pour le cours de L2 CHI/SPI

# optionnel
python3 -m pip install jupyter        # pour les "cahiers de laboratoire"
python3 -m pip install spyder         # éditeur/interpréteur python
python3 -m pip install graphviz       # pour l'outil pytoroad.py
~~~

Si vous avez utilisé "anaconda", vous pouvez devoir utiliser le gestionnaire de bibliothèque intégré `conda`.

En cas de problème avec pip, tenter :

~~~
python3 -m pip install --upgrade pip
python3 -m pip install certifi
~~~



-----------------------
