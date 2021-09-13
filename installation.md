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

Pour ne pas vous perdre dans l'installation (certaines choses dépendent de votre système d'exploitation, de votre version si vous êtes sous windows etc), voici les **étapes typiques à suivre** :

1. **installer emacs** [voir ci dessous (windows)](#emacs) ou [(macos)](#emacsmacos)
1. **installer gitbash** [voir ci dessous](#gitbash) (windows uniquement)
1. **configurer emacs** dans un (nouveau) fichier de configuration bash [voir les trucs et astuces bash]({{page.root}}/more-bashtips/)
1. **installer python** [voir ci dessous](#pywin)
1. **configurer python** dans bash [voir la section dédiée]({{page.root}}/more-bashtips/#bashpython)
1. **installer des bibliothèques** (pyqt et/ou numpy etc) dans python [voir la section dédiée](#bibpip)
1. **installer 7zip et le configurer dans bash** [voir la section dédiée]({{page.root}}/more-bashtips/#7zip) (windows uniquement)


# Utiliser Python dans un navigateur, sans rien installer

**Solution A** (uniquement pour les **bases**, mais **pas qtido**, **pas numpy**, pas suffisant pour certains TD/TP) :

Le site de Python permet de [lancer un interpreteur](https://www.python.org/shell/) pour faire des essais de manière interactive.
Python est exécuté sur un serveur (un autre ordinateur) qui est fourni gratuitement, il se peut donc que ce service ne fonctionne pas, selon le nombre de personnes l'utilisant.

**Solution B** (**hors ligne**, uniquement pour les **bases**, mais **pas qtido**, **pas numpy**, pas suffisant pour certains TD/TP) :

Le site du projet Brython donne un [éditeur Python](https://brython.info/tests/editor.html?lang=fr) (et une [console interactive](https://brython.info/tests/console.html?lang=fr)).
Python est ici transformé (compilé) pour être exécuté localement dans votre navigateur web.

**Solution C** (très **légère**, **hors ligne**, marche avec **qtido**, mais **pas numpy**) :

Prendre le fichier `oijspy-v....html`  sur claroline connect, vous pouvez le télécharger et l'ouvrir localement dans votre navigateur, pour travailler sans internet.

**Solution D** (pour **numpy**, mais **pas qtido**) :

Plusieurs services qui fait tourner un jupyter notebook sur une machine quelque part et vous y donne accès.
Un exemple est proposé par [le projet jupyter lui même](https://jupyter.org/try)

**Solution E** (expérimental, pour **numpy**, mais **pas qtido**, potentiellement hors ligne) :

Un projet en cours de développement (appelé [pyiodide](https://alpha.iodide.io/)) permet d'utiliser python qui fonctionne totalement dans le navigateur web, y compris avec numpy et matplotlib.
Par exemple, allez sur [le notebook d'exemple](https://alpha.iodide.io/tryit?) et remplacer le contenu par votre programme (attention à bien garder le `%%py` car le notebook permet de mélanger python et d'autre langages), par exemple copiez ceci (et lancer le avec maj+entrée) :

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


# Installation pour un système d'exploitation **Windows**

Des <span class="ico-vid">🎥</span> [vidéos][playlist] sont disponible pour illustrer l'installation.
Des liens vers des vidéos spécifiques sont disponibles ci dessous.



## Interpréteur de commande **Bash** sous Windows
{: #gitbash}

<span class="ico-vid">🎥</span> Vidéos : [Version-Windows], [Installer-Gitbash].

Pour avoir une ligne de commande avec l'interpréteur "bash" sous windows, il faut télécharger et installer le logiciel [git for windows](https://git-for-windows.github.io/) qui peut se [télécharger directement (64bits)](https://github.com/git-for-windows/git/releases/download/v2.30.0.windows.2/Git-2.30.0.2-64-bit.exe) (ou [32bits](https://github.com/git-for-windows/git/releases/download/v2.30.0.windows.2/Git-2.30.0.2-32-bit.exe)).

Acceptez tous le choix par défaut lors de l'installation.
Une fois le programme installé, vous pouvez faire « click bouton droit » dans un dossier puis cliquer sur « Git Bash » dans le menu déroulant, pour lancer un terminal executant « bash ».

Il est recommandé de lire alors [les trucs et astuces bash]({{page.root}}/more-bashtips/).

## Emacs sous Windows
{: #emacs}

<span class="ico-vid">🎥</span> Vidéos : [Installer-Emacs].

Pour utiliser emacs, il vous faut d'abord l'installer :

- Télécharger [une archive zip (64bits)](https://ftp.igh.cnrs.fr/pub/gnu/emacs/windows/emacs-27/emacs-27.1-x86_64.zip) (ou [32bits](https://ftp.igh.cnrs.fr/pub/gnu/emacs/windows/emacs-27/emacs-27.1-i686.zip)). - Décompresser le fichier téléchargé (bouton droit puis « extraire ici », ou quelque chose de similaire).
- Aller dans le dossier `emacs-27.1-x86_64/bin` (ou similaire) et double-clicker sur `addpm.exe` (cela va ajouter emacs dans votre menu « démarrer »)

Puis, vous devriez pouvoir le lancer à partir du menu « démarrer ».
Suivez « [les trucs et astuces bash]({{page.root}}/more-bashtips/) » pour pouvoir lancer emacs depuis le terminal.

<span class="ico-vid">🎥</span> Vidéos : [Configurer-Emacs], [Configurer-Bash].




## **Python3** sous Windows
{: #pywin}

<span class="ico-vid">🎥</span> Vidéos : [Version-Windows].

Note: l'installation peut prendre environ 500Mo sur votre disque dur.

Nous allons utiliser l'installateur fourni par le projet Python.
Il peut être téléchargé via la page [page de téléchargement](https://www.python.org/downloads/release/python-391/) ou [directement (64bits)](https://www.python.org/ftp/python/3.9.1/python-3.9.1-amd64.exe) (ou [32bits](https://www.python.org/ftp/python/3.9.1/python-3.9.1.exe)).

Important : lors de l'installation, **cochez la case « add Python 3.9 to path »** avant de clicker sur « install now ».
**Copiez quelquepart** le chemin d'installation de Python.

<div style="color: #AAA">
<p>
<b>Si</b> cette solution ne marche pas, une autre solution est d'utiliser l'installateur appelé Anaconda (voir [Installer-Python-Anaconda]).
Il faut télécharger et installer le programme suivant : https://www.anaconda.com/download/
Attention: choisir la ligne correspondant à votre installation (32 ou 64 bits).
</p>
</div>

**Si**, après l'installation et le démarrage d'un nouveau terminal (gitbash), les commandes « `python3 --version` » et « `python --version` » donnent un problème de droits (Permission Denied), lire « [les trucs et astuces bash]({{page.root}}/more-bashtips/) » pour pouvoir « dire à bash d'utiliser le bon Python ».


**Ensuite**, vous pouvez ou devez (selon les cours) [installer des bibliothèques Python](#bibpip) par exemple pour utiliser qtido ou numpy.



## Autres **Éditeur** de texte sous Windows

(optionnel)

Dans les cours/tp, nous montrons « emacs » comme éditeur de texte.
Vous pouvez aussi essayer d'autres éditeurs de textes.

### Alternatives à Emacs
{: #alteditor}

À la place d'emacs, il est possible d'utiliser, pour éditer du Python :

- [https://atom.io/](https://atom.io/), un éditeur léger et rapide,
- [VS Code](https://code.visualstudio.com/Download), un éditeur complet
- [PyCharm](https://www.jetbrains.com/pycharm/download/#section=linux), en version gratuite « community », un éditeur complet et plein de fonctionalités.
- Spyder, qui peu s'installer après avoir installé python avec la commande `pip3 install spyder`

# Installation pour un système d'exploitation **Mac**

## Interpréteur de commande Bash sous Mac

Il est installé par défaut.
Il suffit de trouver comment lancer un "terminal" depuis votre Mac.

## Python3 sous Mac

Il est recommandé de suivre les instructions « [Python3 sous Windows](#pywin) ».

## Éditeur de texte sous Mac

Dans les cours/tp, nous montrons « emacs » comme éditeur de texte.
Vous pouvez aussi essayer d'autres éditeurs, voir « [Alternatives à Emacs](#alteditor) ».

### Emacs (MacOS)
{: #emacsmacos}

Suivez les instructions (en anglais) sur [https://wikemacs.org/wiki/Installing_Emacs_on_OS_X](https://wikemacs.org/wiki/Installing_Emacs_on_OS_X) et demander de l'aide à vos enseignants en cas de problème.

-----------------------
-----------------------
-----------------------

# Installation de bibliothèques pythons
{: #bibpip}

Voici une liste de commande qui permettent d'installer différents outils et bibliothèques Python utilisée dans les cours ou qui peuvent être utiles.
Les commandes suivantes, lancées dans un terminal, permettent de télécharger et installer des bibliothèques.

~~~
python3 -m pip install pyqt5          # pour qtido

python3 -m pip install numpy          # pour le cours de L2 CHI/SPI
python3 -m pip install matplotlib     # pour le cours de L2 CHI/SPI

python3 -m pip install jupyter        # pour les "cahiers de laboratoire"
python3 -m pip install spyder         # éditeur/interpréteur python
python3 -m pip install graphviz       # pour l'outil pytoroad.py
~~~

Selon votre installation, il se peut que vous deviez utiliser `pip3` au lieu de `pip`.
Si vous avez utilisé "anaconda", vous pouvez devoir utiliser le gestionnaire de bibliothèque intégré `conda`.

En cas de problème avec pip, tenter :

~~~
python3 -m pip install --upgrade pip
python3 -m pip install certifi
~~~




-----------------------
-----------------------
-----------------------
-----------------------
-----------------------



# Installation pour un système d'exploitation **Linux**

## Interpréteur de commande Bash sous Linux

Il est installé par défaut.
Il suffit de trouver comment lancer un "terminal" depuis votre Linux.

## Python3 (Linux)

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

## Éditeur de texte sous Linux

Dans les cours/tp, nous utilisons « emacs » comme éditeur de texte.
Vous pouvez aussi essayer d'autres éditeurs, voir « [Alternatives à Emacs](#alteditor) ».

### Emacs (Linux)

Soit il est déjà installé, soit vous pouvez l'installer avec votre gestionnaire de paquets.
Par exemple avec :

    sudo apt-get install emacs


-----------------------

# (ancien)(ancien)(ancien) Bash ne trouve pas Python {#bashaliaspython}

*cette section est une discussion qui donne une solution (en utilisant l'éditeur Atom, mais la même chose peut être faite avec emacs ou autre).*


<blockquote markdown="1">
> …après avoir téléchargé anaconda3, je n'arrive pas à obtenir une réponse comme dans votre vidéo lorsque vous vous mettez « `python --version` » dans Bash (cela me dit qu'il ne connaît rien à ce nom).
> Lors de l'installation dans votre vidéo, vous cochez « add anaconda to my path environment variable », ce que je n'avais pas fais, car sur mon ordinateur il m'avait été marqué que cela était fortement déconseillé.

Effectivement, cela semble maintenant déconseillé.

> Est ce que cela a un rapport ?

Oui, c'est pour cela que python n'est pas trouvé.

> Comment dois je m'y prendre ?

Dans l'idée : nous allons dire à l’interpréteur de commande « bash » que quand tu tapes « python » ou « python3 » cela veut dire `C:\......\python` (le chemin complet vers l'endroit ou python a été installé). Il exécutera donc le programme python installé dès que tu tapes `python3` ou `python`.

Voilà comment faire.

**1)** Tout d'abord il faut trouver où Anaconda a été installé. Dans mon exemple c'est dans « `C:\Users\IEUser\Anaconda3` ».
Il faut utiliser l'explorateur de fichier windows pour aller dans C: ou dans ton compte utilisateur pour trouver le dossier Anaconda.
Une fois trouvé, il faut copier ou noter le chemin. Le chemin est accessible en cliquant sur l'icône de dossier dans la barre d'adresse (voir https://grenier.self-access.com/access/le-saviez-vous/copier-un-chemin-windows-rapidement/).


**2)** Maintenant, nous allons créer un fichier de configuration vide.
Il faut lancer « gitbash » et exécuter les deux commandes suivantes (je mets en commentaire ce que cela fait).

~~~bash
cd                    # revenir à la racine de ton compte utilisateur (pour être sûr)
touch .bash_profile   # créer, s'il n'existe pas, le fichier « .bash_profile »
                      # (avec le point au début) qui sert de configuration à bash
~~~

**3)** Maintenant il faut lancer ton éditeur de texte (atom ? depuis le menu « démarrer »),
puis ouvrir le fichier « `.bash_profile` » avec le menu ou Ctrl+O (touche « control » et touche « o »), la principale difficulté est de trouver où le fichier est, en gros dans ton dossier utilisateur, le chemin est par exemple `C:\Users\TonUtilisateur\`

À l'aide de l'éditeur (atom), nous allons ajouter des choses dans le fichier (qui est possiblement vide à ce point).
Il faut ajouter les lignes suivantes :

~~~bash
alias python='C:/Users/IEUser/Anaconda3/python'
alias python3=python
~~~

Important : dans la première ligne,
- il y a des guillemets (apostrophe) autours du chemin
- le chemin est celui trouvé à l'étape 1), il sera différent pour toi
- les « \ » doivent être remplacé par des « / »
- le chemin est celui d'anaconda, auquel on a ajouté « /python » à la fin

Bien penser à sauvegarder le fichier.


**4)** Ça y est. Chaque terminal `bash` démarré à partir de ce moment permettra normalement d'utiliser « `python` » ou « `python3` ».
Lancer un nouveau terminal et taper « `python3 --version` »
</blockquote>

-----------------------


<style>
.ico-vid { font-size: 200%; }
</style>

-----------------------


[playlist]: https://www.youtube.com/playlist?list=PLWR7ZHocfRYasFN8GRihwyu__grY0be_s
[Version-Windows]: https://www.youtube.com/watch?v=5_-yCLg8jcQ
[Installer-Gitbash]: https://www.youtube.com/watch?v=q7ntKVHUyeU
[Installer-Emacs]: https://www.youtube.com/watch?v=aPaHAj5Cdq8
[Configurer-Emacs]: https://www.youtube.com/watch?v=5owlbwRooOw
[Configurer-Bash]: https://www.youtube.com/watch?v=SvizCWdP2RU
[Installer-Python-Anaconda]: https://www.youtube.com/watch?v=5UfzrZWtxVk

-----------------------


-----------------------
