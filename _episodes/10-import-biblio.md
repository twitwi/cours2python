---
title: "Bibliothèques et Importation de Fonctions"
teaching: 0
exercises: 0
questions:
- "Comment faire des calculs mathématiques plus complexes comme de la trigonométrie ?"
- "Où trouver d'autres fonctions existantes ?"
- "Comment référencer des fonctions existantes ?"
objectives:
- "Comprendre le concept de « bibliothèque » (appelé aussi « module »)."
- "Découvrir les 3 façons possibles d'utiliser une fonction d'une bibliothèque."
keypoints:
- "Une bibliothèque fourni un ensemble de fonctions et constantes utiles."
- "La bibliothèque `math` fourni des fonctions (`sin`, `log`, etc) et des constantes telles que `pi` et `e`."
- "Il est nécessaire d'installer une bibliothèque avant de pouvoir importer ses fonctions."
- "Certaines bibliothèques sont installées par défaut."
- "La notation `truc.machin` veut dire que l'on accède à `machin` qui se trouve à l'intérieur de `truc`, ici la fonction `machin` dans le module `truc`."
- "Il est possible d'importer un module, une fonction en particulier ou l'ensemble des fonctions d'un module."
---

Un *module* Python est un ensemble de fonctionalités mises à disposition par quelqu'un.
Un module peut ainsi contenir des fonctions que vous pouvez utiliser directement.

Un exemple de module est le module `math` qui est installé par défaut avec Python.
Ce module contient de nombreuses fonctions mathématiques : `sin`, `cos`, `sqrt` (racine carrée), `exp` (exponentielle, 

Quand vous avez installé Python, vous avez installé de nombreux modules existants.
Il vous serait aussi possible d'écrire vos propre modules et de les partager avec d'autres personnes.
Voici un exemple de programme affichant le sinus d'un angle.
Comme l'angel est donné en degré, il doit être converti en radians (car `sin` s'attends à recevoir des radians).

~~~python
import math
a = 75
r = math.radians(a)
s = math.sin(r)
print("Le sinus de", a, "(degres) est", s)
~~~
{: .source}

Il existe 3 façons d'utiliser une fonction d'un module donné, détaillées ci-dessous.

> ## Syntaxe : utilisation de `import` pour utiliser une bibliothèque.
> 
> - importation du module
> 
> ~~~python
> import math
> print( math.sqrt(100) )
> ~~~
> {: .source}
> 
> - importation d'une fonction en particulier
> 
> ~~~python
> from math import sqrt
> print( sqrt(100) )
> ~~~
> {: .source}
> 
> - importation de toutes les fonctions d'un module
> 
> ~~~python
> from math import *
> print( sqrt(100) )
> ~~~
> {: .source}
{: .syntax}
