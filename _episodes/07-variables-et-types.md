---
title: "Variables et Types"
teaching: 0
exercises: 0
questions:
- "Comment rendre plus lisibles des expressions compliquées ?"
- "Comment mémoriser des valeurs intermédiaire ?"
- "Peux-on ajouter des choux et des carottes ?"
objectives:
- "Comprendre la notion de variable."
- "Comprendre la notion de programmation impérative."
keypoints:
- "Un programme est exécuté de haut en bas."
- "Chaque valeur en python a un type, par exemple `int` (entier) ou `float` (nombre à virgule flottante) ou `str` (*string*, chaîne de caractères)."
- "Il est possible d'associer/d'affecter une valeur à un nom, on appelle cela une variable."
- "Une variable change de valeur uniquement quand on lui ré-affecte une nouvelle valeur."
- "On peut connaître le type d'une valeur avec `type(…)`."
- "Le nom d'une variables n'a pas d'importance pour l'ordinateur."
- "Il est cependant primordial de choisir des noms de variables pertinents pour aider à la (re)lecture du programme."
- "Un programme est écrit pour être compris à la fois par l'ordinateur et par l'humain."
---

Exemple de programme illustrant en partie les variables et types :

~~~python
print("Bonjour")

a = "Hello"
print(a)
print(type(a))

un_entier = 123
print(un_entier)
print(type(un_entier))

truc = 18.5
print(truc, type(truc))

truc = "Une « string » (chaîne de caractère)"
print(truc)
print(type(truc))
~~~
{:code}
