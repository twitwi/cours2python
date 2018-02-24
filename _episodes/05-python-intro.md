---
title: "Un Premier Programme"
teaching: 0
exercises: 0
questions:
- "Comment et où écrire un programme en Python ?"
- "Comment lancer/exécuter ce programme Python ?"
objectives:
- "Savoir écrire un programme dans un fichier texte brut."
- "Savoir utilisez la commande `python3` pour lancer/exécuter le programme."
- "Savoir afficher un nombre et du texte en Python."
- "Savoir écrire un commentaire en Python."
keypoints:
- "Un programme Python est un fichier texte brut."
- "L'extension normale pour les programmes Python est `.py`, par exemple `nomDuFichier.py`."
- "Un programme Python s'exécute avec `python3 nomDuFichier.py`."
- "En Python, `print(…)` permet de produire une sortie qui sera affichée dans le terminal."
- "La plupart des espaces (caractère ` `) sont insignifiant, sauf en début de ligne."
- "Du « texte » est aussi appelé une « chaîne de caractères » ou *string* (en anglais)."
- "En Python, `len(…)` permet d'obtenir la longueur d'une chaîne de caractères (le nombre de caractères qu'elle contient)."
- "En Python, une chaîne de caractère doit être entre guillemets."
- "On peut utiliser au choix les guillemets simples `'toto'` ou les doubles `\"toto\"` pour les chaînes de caractères."
---

## Création d'un premier programme (vide)

Nous allons maintenant créer un premier programme Python.
Pour cela nous devons créer sur le disque dur un fichier dit « texte brut », c'est à dire qu'il contient exactement les caractères que l'on va taper.
La notion de « texte brut » se distingue de celle de « texte riche » où le texte est augmenté avec des notions de formatage (titre, couleur, gras, ...).
L'édition de « texte riche » se fait généralement avec des éditeurs comme Openoffice ou Word.

Pour créer un fichier un ou plusieurs fichiers, il est possible d'utiliser `bash` depuis un terminal en utilisant la commande `touch`.
Par convention, les fichiers contenant des programmes Python doivent avoir l'extension `.py`.
Ainsi, nous pouvons créer notre premier programme Python (vide) avec la comande suivante, exécutée dans le terminal:

~~~bash
touch premier.py
~~~
{: .source}

Nous pouvons ensuite lancer ce programme (ou l'exécuter) avec la commande `python3`.

~~~bash
python3 premier.py
~~~
{: .source}

Comme ce programme est vide, son exécution ne produira aucune sortie.
Nous devrions donc observer :
~~~
.... $ touch premier.py
.... $ python3 premier.py
.... $
~~~
{: .output}

## Édition d'un fichier texte brut

Nous allons maintenant éditer/modifier notre programme, le sauver et le relancer.
Pour cela nous avons besoin d'un éditeur de texte (brut).
Selon comment vous avez installé votre environnement, vous pouvez utiliser différents éditeurs (voir [l'aide à l'installation](../installation)).

Bien qu'un éditeur de texte brut ne permettent pas de mise en forme, il va vous aider à écrire et lire vos programmes.
Ainsi, selon la structure de ce que vous taper dans le fichier, l'éditeur va mettre en couleur différents mots clés et différentes valeurs dans votre programme.
Nous allons ici considérer que l'éditeur `emacs` est installé (comme dans les salles machines sous Linux), mais il est possible d'utiliser n'importe quel éditeur de texte brut.

Nous allons ouvrir notre programme vide à l'aide d'`emacs`.
Pour celà, nous pouvons utiliser `bash` depuis le terminal, en lançant la commande :
~~~bash
emacs premier.py &
~~~
{: .source}

Le `&` permet de lancer un programme « en fond de tâche », c'est à dire de ne pas bloquer le terminal pendant que le programme s'exécute.
Puisque l'on veut continuer à utiliser notre terminal et utiliser l'éditeur de texte en même temps, nous utilisons le `&`.

> ## Le terminal ne répond plus ?
> Si votre terminal ne répond pas, c'est probablement qu'une commande n'a pas terminée de s'exécuter.
> Le plus souvent, c'est qu'un éditeur (`emacs`) a été lancé sans le `&` à la fin.
> Il y a plusieurs « solutions », au choix :
> 1. quitter `emacs` puis le relancer avec `&`,
> 2. dans le terminal, utiliser <kbd>Ctrl</kbd>+<kbd>Z</kbd> (presser la touche <kbd>ctrl</kbd> et appuyer sur <kbd>z</kbd>) pour mettre en pause `emacs` et récupérer le terminal, puis lancer la commande `bg` (pour « background », tâche de fond) dans le terminal,
> 1. quitter brutalement `emacs` (ou autre) avec <kbd>Ctrl</kbd>+<kbd>C</kbd> dans le terminal.
{: .callout}

Une fois votre éditeur de texte lancé, tapez le programme suivant à l'intérieur :

~~~python
print("Bon Jour")
~~~
{: .source}

Puis sauvegardez les modifications grâce au menu ou à un bouton dans votre éditeur.
Nous allons maintenant lancer ce programme à nouveau avec :

~~~bash
python3 premier.py
~~~
{: .source}

Ceci devrait afficher la sortie `Bon Jour` dans le terminal.
La fonction `print()` sers à afficher dans le terminal ce qui lui est passé en paramètre (entre parenthèses).
On peut relancer ce programme en entrant à nouveau la commande `python3 premier.py` ou en la rappelant grâce à <kbd>↑</kbd> (la flêche vers le haut).

Modifiez maintenant votre fichier pour qu'il contiennent le contenu suivant :

~~~python
print("Bonjour")
print(4242)
~~~
{: .source}

Pensez à sauver votre fichier et relancez le avec `python3 premier.py`.
Il devrait maintenant afficher 2 lignes, `Bon Jour` et `4242`.

Ajoutez à votre fichier une nouvelle ligne contenant `print(len("Salut"))` et relancer votre programme.
La fonction `len()` permet de connaître la longueur (nombre de caractère d'une chaîne de caractères).
Votre programme devrait donc afficher, en plus, `5`.

Ajoutez un `#` au début de la seconde ligne et relancer votre programme (pensez à sauvegarder).
Le `#` marque un commentaire, et donc la ligne est ignorée par Python.
Ainsi, le `4242` ne s'affichera plus.
Les commentaires servent généralement à aider un humain (camarade, professeur, collègue, ou vous même plus tard) à comprendre le programme.

Au final, nous devrions observer dans le terminal quelque chose qui ressemble à cela :

~~~
.... $ python3 premier.py
.... $ emacs premier.py &
.... $ python3 premier.py
Bon Jour
.... $ python3 premier.py
Bonjour
4242
.... $ python3 premier.py
Bonjour
4242
5
.... $ python3 premier.py
Bonjour
5
.... $
~~~
{: .output}


> ## Syntaxe : commentaires
> - Toute ligne qui commence par `#` (dièse) est ignorée par Python.
> - Tout ce qui suit un `#` est ignoré par l'interpréteur Python (sauf dans une chaîne de caractères).
>
> ~~~python
> # Toute cette ligne est un commentaire
> print("Bonjour") # Ceci est un commentaire
> print("Suivez #python ! (et ce n'est pas un commentaire).")
> ~~~
> {: .source}
{: .syntax}
