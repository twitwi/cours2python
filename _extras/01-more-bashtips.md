---
layout: page
title: Astuces Bash
permalink: /more-bashtips/
---

## Importante introduction

À chaque fois que l'on ouvre un (nouveau) terminal, un nouveau `bash` est lancé et il exécute avant tout le fichier `~/.bash_profile` (le fichier caché `.bash_profile` dans votre dossier maison) s'il existe.

Pour éditer ce fichier (si emacs est déjà configuré, cf « Configurer Emacs dans Bash » ci dessous), vous pouvez taper la succession de commandes suivantes :

    cd
    emacs .bash_profile

Pour tester les changements, il faut **lancer un nouveau terminal**.
Autrement dit : **RELANCER gitbash** pour tester les changements



## Configurer Emacs dans Bash sous Windows

<span class="ico-vid">🎥</span> Vidéos : [Configurer-Emacs].

Pour pouvoir ouvrir emacs depuis le terminal en tapant juste `emacs`, il va falloir créer/modifier le fichier `~/.bash_profile`.

Pour cela (on suppose emacs installé) :

- ouvrir un terminal et taper (pour créer le fichier, et connaître le chemin de votre dossier « maison »).

```
cd
touch .bash_profile
pwd
# se rappeler du chemin renvoyé par pwd, par exemple /c/Users/Bob
```

- ouvrir emacs avec le menu démarrer Windows
- à partir de emacs, ouvrir le fichier `.bash_profile` qui est par exemple dans `C:/Users/Bob`
- garder le fichier ouvert dans emacs
- dans le menu démarrer, rechercher emacs mais au lieu de le lancer, clicker avec le bouton droit et faites « propriétés »
- dans l'onglet « Raccourci » de la fenêtre de propriétés, copier la valeur du champs « Cible » (par exemple `C:\Users\Bob\...\runemacs.exe`)
- dans le emacs que vous aviez gardé ouvert, ajouter la ligne suivante

```
alias emacs='"/c/Users/Bob/.../runemacs.exe"'
```

- Important : si votre nom d'utilisateur est compliqué, remplacez `/c/Users/Bob/` par `$HOME/`
- Important : remplacer le chemin par celui que vous venez de copier
- Important : remplacer aussi les `\` par `/`
- Important : remplacer aussi le `C:` du début par `/c` (en minuscule)
- NB : penser à **sauvegarder** ensuite
- IMPORTANT : **RELANCER gitbash** pour tester les changements




## Lancer python 3 avec `python3` dans Bash

<span class="ico-vid">🎥</span> Vidéos : [Configurer-Bash].

Il faut préalablement avoir configuré Emacs dans Bash (c.f. ci dessus).
Ouvrez alors le fichiers `.bash_profile` avec 

    cd
    emacs .bash_profile

Pour pouvoir le lancer en tapant `python3` au lieu de `python` (pour faire comme en salle de TP), il faut ajouter dans le fichier `.bash_profile` la ligne suivante:

    alias python3=python

- IMPORTANT : **RELANCER gitbash** pour tester les changements




## Dire à bash d'utiliser le bon Python (permission denied, windowsapps)

Il faut préalablement avoir configuré Emacs dans Bash (c.f. ci dessus).
Ouvrez alors le fichiers `.bash_profile` avec 

    cd
    emacs .bash_profile

Et ajoutez les lignes suivantes :

    alias pip="python3 -m pip"
    alias python3=python
    alias python='"$HOME/AppData/Local/Programs/Python/Python37/python.exe"'

- Important : adapter si besoin la dernière ligne avec le chemin d'installation de Python que vous avez noté précédemment
- NB : penser à **sauvegarder** ensuite
- IMPORTANT : **RELANCER gitbash** pour tester les changements






## Couleurs dans `ls`

Ajouter la ligne suivante dans votre fichier `~/.bash_profile` :

    alias ls="ls --color"

## Rendre cp/mv/ls plus « sûrs »

Pour que cp/mv/ls demandent (par défaut) avant d'écraser un fichier existant, ajouter les lignes suivantes dans votre fichier `~/.bash_profile` :

    alias rm='rm -i'
    alias cp='cp -i'
    alias mv='mv -i'



-----------------------------------------------
<style>
.ico-vid { font-size: 200%; }
</style>
-----------------------------------------------
-----------------------------------------------

[Configurer-Emacs]: https://www.youtube.com/watch?v=5owlbwRooOw
[Configurer-Bash]: https://www.youtube.com/watch?v=SvizCWdP2RU
