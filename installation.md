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


# Installation pour un système d'exploitation **Windows**

Des 🎥 [vidéos][playlist] sont disponible pour illustrer l'installation.
Des liens vers des vidéos spécifiques sont disponibles ci dessous.

## Interpréteur de commande **Bash** sous Windows

🎥 Vidéos : [Version-Windows], [Installer-Gitbash].

Pour avoir une ligne de commande avec l'interpréteur "bash" sous windows, il faut télécharger et installer le logiciel [git for windows](https://git-for-windows.github.io/) qui peut se [télécharger directement (64bits)](https://github.com/git-for-windows/git/releases/download/v2.18.0.windows.1/Git-2.18.0-64-bit.exe)).

Acceptez tous le choix par défaut lors de l'installation.
Une fois le programme installé, vous pouvez faire « click bouton droit » dans un dossier puis cliquer sur « Git Bash » dans le menu déroulant, pour lancer un terminal executant « bash ».

Il est recommandé de lire alors [les trucs et astuces bash]({{page.root}}/more-bashtips/).


## **Python3** sous Windows
{: #pywin}

🎥 Vidéos : [Version-Windows].

Note: l'installation peut prendre presque 500Mo sur votre disque dur.

Nous allons utiliser l'installateur fourni par le projet Python.
Il peut être téléchargé via la page [page de téléchargement](https://www.python.org/downloads/release/python-370/) ou [directement (64bits)](https://www.python.org/ftp/python/3.7.0/python-3.7.0-amd64.exe).

Important : lors de l'installation, **cochez la case « add Python 3.7 to path »** avant de clicker sur « install now ».

Une autre solution est d'utiliser l'installateur appelé Anaconda (voir [Installer-Python-Anaconda]).
Il faut télécharger et installer le programme suivant : <https://www.anaconda.com/download/>
Attention: choisir la ligne correspondant à votre installation (32 ou 64 bits) et à *Python3.5* (nous voulons Python3 pas <strike>Python2</strike>).

Si, après l'installation et le démarrage d'un nouveau terminal (gitbash), les commandes « `python3 --version` » et « `python --version` » disent ne pas trouver Python, suivez « [bash ne trouve pas python](#bashaliaspython).

Ensuite, vous pouvez ou devez (selon les cours) [installer des bibliothèques Python](#bibpip).

## **Éditeur** de texte sous Windows

Dans les cours/tp, nous montrons « emacs » comme éditeur de texte.
Vous pouvez aussi essayer d'autres éditeurs de textes, qui peuvent être plus simples à installer.

### Emacs sous Windows

🎥 Vidéos : [Installer-Emacs].

Pour utiliser emacs, il vous faut d'abord l'installer :

- Télécharger <http://ftp.gnu.org/gnu/emacs/windows/emacs-24.5-bin-i686-mingw32.zip> . <!--http://ftp.gnu.org/gnu/emacs/windows/emacs-24.3-bin-i386.zip> .-->
- Décompresser le fichier téléchargé (bouton droit puis « extraire ici », ou quelque chose de similaire).
- Aller dans le dossier `emacs-24.3/bin` et double clicker sur `addpm.exe` (cela va ajouter emacs dans votre menu « démarrer »)

Puis, vous devriez pouvoir le lancer à partir du menu « démarrer ».
Lire « [les trucs et astuces bash]({{page.root}}/more-bashtips/) » pour pouvoir lancer emacs depuis le terminal.

🎥 Vidéos : [Configurer-Emacs], [Configurer-Bash].

### Alternatives à Emacs
{: #alteditor}

À la place d'emacs, il est possible d'utiliser, pour éditer du Python :

- [https://atom.io/](https://atom.io/), un éditeur léger et rapide,
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

Suivez les instructions (en anglais) sur [http://wikemacs.org/wiki/Installing_Emacs_on_OS_X](http://wikemacs.org/wiki/Installing_Emacs_on_OS_X) et demander de l'aide à vos enseignants en cas de problème.

-----------------------
-----------------------
-----------------------

# Installation de bibliothèques pythons
{: #bibpip}

Voici une liste de commande qui permettent d'installer différents outils et bibliothèques Python utilisée dans les cours ou qui peuvent être utiles.
Les commandes suivantes, lancées dans un terminal, permettent de télécharger et installer des bibliothèques.

~~~
pip install pyqt5          # pour qtido

pip install numpy          # pour le cours de L2 CHI/SPI
pip install matplotlib

pip install jupyter        # pour les "cahiers de laboratoire"
pip install spyder         # éditeur/interpréteur python
pip install graphviz       # pour l'outil pytoroad.py
~~~

Selon votre installation, il se peut que vous deviez utiliser `pip3` au lieu de `pip`.
Si vous avez utilisé "anaconda", vous pouvez devoir utiliser le gestionnaire de bibliothèque intégré `conda`.

En cas de problème avec pip, tenter :

~~~
python -m pip install --upgrade pip
pip install certifi
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


## Éditeur de texte sous Linux

Dans les cours/tp, nous utilisons « emacs » comme éditeur de texte.
Vous pouvez aussi essayer d'autres éditeurs, voir « [Alternatives à Emacs](#alteditor) ».

### Emacs (Linux)

Soit il est déjà installé, soit vous pouvez l'installer avec votre gestionnaire de paquets.
Par exemple avec :

    sudo apt-get install emacs


-----------------------

# Bash ne trouve pas Python {#bashaliaspython}

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
Une fois trouvé, il faut copier ou noter le chemin. Le chemin est accessible en cliquant sur l'icône de dossier dans la barre d'adresse (voir http://grenier.self-access.com/access/le-saviez-vous/copier-un-chemin-windows-rapidement/).


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



