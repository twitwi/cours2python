---
title: "Listes de Valeurs (2)"
teaching: 0
exercises: 0
questions:
- "Comment tester si une valeurs se trouve dans une liste ?"
- "Comment extraire des statistiques d'une liste ?"
objectives:
- "Découvrir certains avantages pratique des listes."
- "Savoir créer une liste progressivement, en ajoutant les éléments un par un (utiliser une liste comme accumulateur)."
keypoints:
- "Les listes peuvent être manipulés de manière comparable aux chaînes de caractères par exemple avec `len(…)`, `*`, `+`."
- "Certaines fonctions comme `min(…)`, `max(…)`, `sum(…)` fonctionnent aussi avec une liste en paramètre."
- "La fonction `list.append(l, e)` permet d'ajouter un élément à la fin d'une liste (la liste est modifiée)."
---

> ## Quelle différence entre `list.append(l, e)` ou `l.append(e)` ?
> Si `l` est une liste et `e` un élément quelconque, il est possible d'utiliser indifféremment `list.append(l, e)` ou `l.append(e)`.
> La deuxième version est la plus utilisée par la communauté Python.
> Ces notations sont à mettre en parallèle avec celle utilisée pour les bibliothèques, par exemple `math.sin(…)`.
> La notation `list.append` veut dire que l'on accède à `append` qui se trouve à l'intérieur de `list`, ici la fonction `append` dans le type `list`.
> Pour le cas de `l.append` on accède à la fonction `append` de notre liste particulière `l` : la fonction sait donc déjà de quelle liste il s'agit, et on ne passe donc que l'élément à ajouter `e`.
{: .callout}

> ## Syntaxe : test d'appartenance à une liste
> Il est possible de regarder si un élément est dans une liste à l'aide du mot clé `in`, par exemple ici dans un `if` :
> 
> ~~~python
> if «el» in «list» :
>     «instruction»
> ~~~
> {: .source}
{: .syntax}

