---
title: "Fonctions Prédéfinies et Aide"
teaching: 0
exercises: 0
questions:
- "D'où viennent les fonctions `print(…)`, `min(…)`, `len(…)`, etc ?"
- "Que peuvent faire ces fonctions ?"
objectives:
- "Se familiariser avec le concept d'appel de fonction fonction."
- "Comprendre le concept de « valeur de retour » d'une fonction."
- "Savoir afficher le manuel d'une fonction."
keypoints:
- "Python fourni un ensemble de fonctions prédéfinies telles que `print`, `abs`, `min`, `max`, `len`, `help`.
  <!-- éviter `sum` puisque l'on a pas vu les listes pour l'instant -->"
- "On « appelle » la fonction (on l'exécute) quand on écrit son nom suivi de valeurs de paramètres entre parenthèses."
- "Une fonction peut accepter un nombre arbitraire de paramètres (y compris aucun paramètre)."
- "Chaque fois que l'on appelle une fonction, une valeur est retournée."
- "La valeur spéciale `None` représente une valeur vide."
- "La fonction prédéfinie `help(…)` permet d'afficher « interactivement » le manuel d'une fonction."
---

Par défaut, un programme Python a accès à un ensemble de fonctions dites « prédéfinies ».
C'est le cas par exemple de `print` (pour écrire dans le terminal) ou de `abs` (qui calcule la valeur absolue d'un nombre entier ou à virgule flottante).

Les fonctions et les modules Python sont généralement documentés : les auteurs ont décrit ce que ces fonctions et modules peuvent faire.
Il est possible d'accéder à la documentation brute à l'aide de `.__doc__`.
Ainsi, le programme suivant affiche la documentation brute de `abs`.

~~~python
documentation_de_abs = abs.__doc__
print(documentation_de_abs)
~~~
{: .source}

Cependant, le moyen préféré d'accéder à l'aide en Python est d'utiliser la fonction `help` qui produitun format plus lisible de l'aide.
La fonction `help` accepte en paramètre soit un élément (fonction, module) accessible par le programme, soit une chaîne de caractère avec le nom typique d'un tel élément.
Pour obtenir l'aide de `abs`, il est possible d'utiliser au choix une de ces deux lignes:

~~~python
help(abs)
help('abs')
~~~
{: .source}

Ceci va afficher, en anglais, la documentation suivante :

~~~
Help on built-in function abs in module builtins:

abs(x, /)
    Return the absolute value of the argument.
~~~
{: .output}

> ## Bloqué dans `help` ?
> Pour quitter l'aide, il faut utiliser la touche `q` (comme lorsque vous utilisez la commande `less` dans un terminal).
{: .callout}

L'aide affichée nous indique que `abs` est une fonction prédéfinie (*built-in*) et qu'elle accepte un paramètre/argument (dont on ne sait pas grand chose).
La documentation nous dit que `abs` renvoie/retourne (*Return*) la valeur absolue de la valeur qui lui est passée en paramètre.
Cela veut dire que par exemple `abs(-20)` a une valeur et la documentation nous dit que ce sera la valeur absolue de `-20`.
Il est donc possible de manipuler comme on le veux la valeur calculée par `abs`, comme par exemple dans :

~~~python
print("La valeur absolue de -20 est", abs(-20))
a = abs(-10)
b = abs(-3.14)
somme = a + b
print("La somme des deux valeurs absolues est", somme)
~~~
{: .source}

Si l'on regarde la documentation de la fonction `print`, à l'aide de `help(print)`, on peut voir les paramètres que accepte mais il n'est jamais mentionné ce que la fonction retourne.
Le but de `print` n'est pas de calculer une valeur mais d'afficher des choses dans le terminal.
Il est donc normal que la documentation ne parle pas de la valeur de retour.

Pourtant, en Python, tout appel de fonction renvoie une valeur.
Ainsi, `print('toto')` aura bien une valeur, mais ce sera une valeur très particulière qui représente le « vide » et qui s'appelle `None`.
Ce programme montre que `print` renvoie bien `None` et que `None` existe par défaut :

~~~python
print(None)         # Affiche « None »

a = print("Toto")   # Affiche « Toto » dans la sortie
print(a)            # Affiche « None »

print(print("a"))   # Affiche « a » et « None »
~~~
{: .source}

Dans ce dernier exemple, la lettre `a` est affiché *avant* `None`.
En effet, pour appeler le premier `print` il faut la valeur de ses paramètres, donc il faut avoir calculé la valeur retournée par le second `print` (même si nous savons que ce sera `None`, le programme ne le sais pas encore) et il faut donc exécuter `print("a")` en premier.
