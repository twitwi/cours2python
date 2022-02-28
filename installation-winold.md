---
layout: page
title: "Installation Ancien Windows"
permalink: /installation-winold/
---

> ## Avec un windows ancien (avant Windows11 version 22000)
> Pour ne pas vous perdre dans l'installation, voici les **étapes typiques à suivre** :
> 
> 1. **installer emacs** ou un autre éditeur de texte ([voir ci dessous (windows)](#emacs))
> 1. **installer gitbash** [voir ci dessous](#gitbash)
> 1. **configurer emacs** dans un (nouveau) fichier de configuration bash [voir les trucs et astuces bash]({{page.root}}/more-bashtips/)
> 1. **installer python** [voir ci dessous](#pywin)
> 1. **configurer python** dans bash [voir la section dédiée]({{page.root}}/more-bashtips/#bashpython)
> 1. **installer des bibliothèques** (pyqt et/ou numpy etc) dans python [voir la section dédiée](#bibpip)
> 1. **installer 7zip et le configurer dans bash** [voir la section dédiée]({{page.root}}/more-bashtips/#7zip)
> 
{: .checklist}


# Solution 1: Installation d'une machine virtuelle linux

Il est possible d'installer une machine virtuelle linux dans un windows.
Pour celà, il faut installer par exemple [virtualbox](https://www.virtualbox.org/) et y installer une machine virtuelle linux (par exemple [ubuntu](https://ubuntu.com/download/desktop)).
Un guide est disponible [en anglais](https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox).

Il faut alors, dans la machine virtuelle, suivre les [instructions pour linux]({{page.root}}/installation-linux/)..

# Solution 2: Installation pour un système d'exploitation **Windows** (ancien)

Des <span class="ico-vid">🎥</span> [vidéos][playlist] sont disponible pour illustrer l'installation.
Des liens vers des vidéos spécifiques sont disponibles ci dessous.

AVANT TOUT, vérifier la version de votre windows (64 bits ou plus rarement, si l'ordinateur est ancien, 32 bits).

<span class="ico-vid">🎥</span> Vidéos : [Version-Windows]


## Interpréteur de commande **Bash** sous Windows
{: #gitbash}

<span class="ico-vid">🎥</span> Vidéos : [Version-Windows], [Installer-Gitbash].

Pour avoir une ligne de commande avec l'interpréteur "bash" sous windows, il faut télécharger et installer le logiciel [git for windows](https://git-for-windows.github.io/) qui peut se [télécharger directement (64bits)](https://github.com/git-for-windows/git/releases/download/v2.35.1.windows.2/Git-2.35.1.2-64-bit.exe) (ou [32bits](https://github.com/git-for-windows/git/releases/download/v2.35.1.windows.2/Git-2.35.1.2-32-bit.exe)).

Acceptez tous le choix par défaut lors de l'installation.
Une fois le programme installé, vous pouvez faire « click bouton droit » dans un dossier puis cliquer sur « Git Bash » dans le menu déroulant, pour lancer un terminal executant « bash ».

Il est recommandé de lire alors [les trucs et astuces bash]({{page.root}}/more-bashtips/).

## Emacs sous Windows
{: #emacs}

<span class="ico-vid">🎥</span> Vidéos : [Installer-Emacs].

Pour utiliser emacs, il vous faut d'abord l'installer :

- Télécharger [une archive zip (64bits)](http://ftp.gnu.org/gnu/emacs/windows/emacs-27/emacs-27.1-x86_64.zip) (ou [32bits](https://ftp.igh.cnrs.fr/pub/gnu/emacs/windows/emacs-27/emacs-27.1-i686.zip)). - Décompresser le fichier téléchargé (bouton droit puis « extraire ici », ou quelque chose de similaire).
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

- [VS Code](https://code.visualstudio.com/Download), un éditeur complet
- [https://atom.io/](https://atom.io/), un éditeur léger et rapide,
- [PyCharm](https://www.jetbrains.com/pycharm/download/#section=linux), en version gratuite « community », un éditeur complet et plein de fonctionalités.
- Spyder, qui peu s'installer après avoir installé python avec la commande `pip3 install spyder`


-----------------------
-----------------------
-----------------------

# Installation de bibliothèques Python
{: #bibpip}

Voici une liste de commande qui permettent d'installer différents outils et bibliothèques Python utilisée dans les cours ou qui peuvent être utiles.
Les commandes suivantes, lancées dans un terminal, permettent de télécharger et installer des bibliothèques.

Si "pip" n'est pas installé, télécharger le fichier https://bootstrap.pypa.io/get-pip.py (sauvez-le à un endroit dans lequel vous savez lancer des fichier python) et lancez le avec `python3 get-pip.py`.

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
