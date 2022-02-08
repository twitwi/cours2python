---
layout: page
title: "Installation"
permalink: /installation/
---

> ## Dans les cours et TP
> Le cours utilise principalement les outils et logiciels suivants :
> - **bash** comme interpréteur de ligne de commande (ou *shell*), qui sert à lancer d'autres commandes et programmes (par exemple, ls pour lister les fichiers, python3 pour exécuter un programme python),
> - **python3** pour exécuter les programmes écrits dans le langage Python,
> - **emacs** pour éditer des fichiers textes bruts (par exemple des programmes python, des fichiers de compte rendus),
> - différentes bibliothèques Python (pour les calculs avancés, le tracé de courbes, le dessin dans des fenêtres, ...).
> - la bibliothèque « fait maison » *qtido* qui elle même utilise une bibliothèque plus classique appelée Qt.
{: .checklist}

>
{: .number-h2}

La procédure d'installation dépend de votre système d'exploitation (Windows, Linux, MacOS) et de sa version (pour windows).
Suivez les instructions sur la page dédiée à votre système :

1. [C'est ici pour un ordinateur et un **Windows 11** récent]({{page.root}}/installation-win11/).
1. [C'est là pour un **Windows plus ancien**]({{page.root}}/installation-winold/).
1. [C'est par ici pour un **MacOS**]({{page.root}}/installation-macos/).
1. [C'est par là si vous avez **Linux (ubuntu, ...)**]({{page.root}}/installation-linux/).



# Utiliser Python dans un navigateur, sans rien installer

**Solution A1** (uniquement pour les **bases**, mais **pas qtido**, **pas numpy**, pas suffisant pour certains TD/TP) :

Le site de Python permet de [lancer un interpreteur](https://www.python.org/shell/) pour faire des essais de manière interactive.
Python est exécuté sur un serveur (un autre ordinateur) qui est fourni gratuitement, il se peut donc que ce service ne fonctionne pas, selon le nombre de personnes l'utilisant.

**Solution A2** (**hors ligne**, uniquement pour les **bases**, mais **pas qtido**, **pas numpy**, pas suffisant pour certains TD/TP) :

Le site du projet Brython donne un [éditeur Python](https://brython.info/tests/editor.html?lang=fr) (et une [console interactive](https://brython.info/tests/console.html?lang=fr)).
Python est ici transformé (compilé) pour être exécuté localement dans votre navigateur web.
Il est aussi utilisé dans [pythonpad](https://www.pythonpad.co/pads/anonymous/).

**Solution B** (très **légère**, **hors ligne**, marche avec **qtido**, mais peu pratique **pas numpy**) :

Prendre le fichier `oijspy-v....html`  sur claroline connect, vous pouvez le télécharger et l'ouvrir localement dans votre navigateur, pour travailler sans internet.

**Solution C** (avec **numpy**, mais **pas qtido**) :

Ici python tourne dans votre navigateur, grâce au projet [pyodide](https://pyodide.org/).
Des « notebooks » sont accessible comme par exemple avec [jupyterlite](https://github.com/jupyterlite/jupyterlite) que vous pouvez [tester directement](https://jupyterlite.rtfd.io/en/latest/try/lab) (soyez patient au premier lancement).
Le projet [basthon](https://basthon.fr/) donne aussi accès à une console ou des « notebooks » python.

**Solution D** (pour **numpy**, mais **pas qtido**) :

Plusieurs services qui fait tourner un jupyter notebook sur une machine quelque part et vous y donne accès via un navigateur.
Un exemple est proposé par [le projet jupyter lui même](https://jupyter.org/try)


<!--
Un projet en cours de développement (appelé [pyiodide](https://alpha.iodide.io/)) permet d'utiliser python qui fonctionne totalement dans le navigateur web, y compris avec numpy et matplotlib.
Par exemple, allez sur [le notebook d'exemple](https://alpha.iodide.io/tryit?) et remplacer le contenu par votre programme (attention à bien garder le `%%py` car le notebook permet de mélanger python et d'autre langages), par exemple copiez ceci (et lancer le avec maj+entrée) :
-->


~~~py
%% py
import numpy as np
import matplotlib.pyplot as plt
x = np.linspace(0, 2, 200)
plt.figure()
plt.plot(x, x**2)
plt.plot(x, x**0.5)
plt.show()
~~~



-----------------------
