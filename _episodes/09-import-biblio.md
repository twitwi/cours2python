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

> ## Syntaxe : utilisation de `import` pour utiliser une bibliothèque.
> 
> - importation du module
> 
> ~~~
> import math
> print( math.sqrt(100) )
> ~~~
> {: .source}
> 
> - importation d'une fonction en particulier
> 
> ~~~
> from math import sqrt
> print( sqrt(100) )
> ~~~
> {: .source}
> 
> - importation de toutes les fonctions d'un module
> 
> ~~~
> from math import *
> print( sqrt(100) )
> ~~~
> {: .source}
{: .syntax}
