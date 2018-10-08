---
title: "Introduction Numpy"
teaching: 0
exercises: 0
questions:
- "Qu'est ce que Numpy ?"
- "Comment importer la bibliothèque Numpy ?"
- "Comment créer des tableaux Numpy ?"
objectives:
- "Comprendre l'intérêt et l'étendue de la bibliothèque Numpy."
- "Découvrir quelques fonctions de création de tableaux numpy."
keypoints:
- "Numpy permet de représenter des tableaux de données et de manipuler ces tableaux facilement."
- "Numpy propose l'équivalent de `range` mais pour la création de tableaux numpy, avec `np.arange` et `np.linspace`."
- "Numpy permet aussi de créer des tableaux (par exemple remplis de 0) de taille demandée."
- "Numpy permet aussi de créer des tableaux de taille demandée, mais en tirant les valeurs au sort."
---

# Introduction et différence avec les listes

Les tableaux numpy sont l'équivalents des listes Python mais avec quelques contraintes (et avantages).

Par exemple, un tableau numpy ne peut contenir des données que d'un seul type : là où une liste Python peut mélanger des chaines de caractères avec des nombres, un tableau numpy interdira ce mélange (on ne mettra souvent que des nombres dans les tableaux numpy).

De plus, pour représenter des « matrice », avec des listes Python, nous utilserions une liste contenant des listes de valeurs.
Rien n'empêche une telle liste d'avoir des éléments (les listes) qui soient de longueur différentes.
Un tableau numpy, lui, aura la contrainte d'être rectangle (chaque ligne a autant de valeurs).

# Création de tableaux numpy 1D

Pour rappel, la fonction `range` permet de créer des listes de nombres entiers.
La valeur retournée par `range` n'est en fait pas vraiment une liste mais il possible d'obtenir une vraie liste.
Par exemple ce code initialise une liste avec les nombres de 100 à 1000, de 10 en 10 :

~~~python
l = list(range(100, 1001, 10))
~~~
{: .source}

À partir d'une liste Python quelconque (mais qui vérifie les contraintes des tableaux numpy), il est possible de créer un tableau numpy avec la fonction `np.array`.
On peut ensuite afficher les deux version pour voir la différence.

~~~python
import numpy as np
l = list(range(100, 201, 10))
t = np.array(l)
print(l)
print(t)
~~~
{: .source}

qui nous donne


~~~
[100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200]
[100 110 120 130 140 150 160 170 180 190 200]
~~~
{: .source}
