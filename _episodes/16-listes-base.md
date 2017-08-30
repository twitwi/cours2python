---
title: "Listes de Valeurs"
teaching: 0
exercises: 0
questions:
- "Comment grouper des valeurs dans une liste ?"
- "Comment lire et modifier une liste ?"
objectives:
- "Comprendre le concept de liste."
- "Savoir comment créer, lire et modifier des listes."
keypoints:
- "Une liste (appelée aussi « tableau ») est un conteneur d'éléments, qui contient une suite de valeurs."
- "Une liste a comme type `list`." 
- "Les éléments d'une liste peuvent être de types quelconques (et potentiellement différents)."
- "Les indices commencent à 0. Le premier élément a pour indice 0, le second a pour indice 1, etc."
---


<!--
 (autrement dit `type(l) == list` est `True` si `l` est une liste.
 -->

> ## Syntaxe : création d'une liste
> Pour créer une liste il faut mettre les valeurs voulues entre crochets et séparées par des virgules.
> On peut donc créer une liste (et l'affecter à la variable «var») avec :
> 
> ~~~
> «var» = [ «expression», «expression», «…» ]
> ~~~
> {: .source}
> 
> Il peut y avoir un nombre quelconque d'expressions.
> Il peut en particulier possible de ne mettre aucune expression, créant ainsi une liste, par exemple avec :
> 
> ~~~
> «var» = []
> ~~~
> {: .source}
{: .syntax}


> ## Syntaxe : accès à un élément d'une liste
> Il est possible d'accéder à un élément d'une liste avec :
> 
> ~~~
> «liste»[«indice»]
> ~~~
> {: .source}
> 
> Cet accès peut servir à changer la valeur d'un élément d'une liste, avec :
> 
> ~~~
> «liste»[«indice»] = «expression»
> ~~~
> {: .source}
{: .syntax}

