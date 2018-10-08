---
title: "Indexage avancé de listes"
teaching: 0
exercises: 0
questions:
- "Comment accéder au n-ème élément d'une liste en partant de la fin ?"
- "Comment extraire une sous-partie d'une liste ?"
- "Comment inverser l'ordre d'une liste ?"
objectives:
- "Comprendre les indices négatifs."
- "Comprendre les tranches de listes."
keypoints:
- "Un indice négatif compte en partant de la fin de la liste."
- "L'indice de -1 représente le dernier élément de la liste, -2 l'avant dernier, etc."
- ""
---


> ## Syntaxe : Indices négatifs de liste
> L'indice dans l'accès à une liste peut être négatif, pour compter la position de l'élément en partant de la fin de la liste.
> Si `l` est une liste et `i` est négatif, on a:
>
> ~~~python
> l[i]
> ~~~
> {: .source}
>
> qui est équivalente à :
>
> ~~~python
> l[len(l) + i]
> ~~~
> {: .source}
> Vue autrement, `l[-j]` est équivalent à `l[len(l) - j]`.
{: .syntax}


> ## Syntaxe : Tranches de liste
> L'indice dans l'accès à une liste peut être complexe, pour extraire une « tranche » (sous partie de liste).
> Si `l` est une liste et `a`, `b`, `c` trois entier (variables, constantes ou expressions) :
>
> ~~~python
> res = l[a:b:c]
> ~~~
> {: .source}
>
> est équivalente à :
>
> ~~~python
> res = []
> for i n range(a, b, c):
>     res.append(l[i])
> ~~~
>
> ou, avec la liste en compréhension :
>
> ~~~python
> res = [l[i] for i in range(a, b, c)]
> ~~~
> {: .source}
>
> Remarques:
>
> - Il est possible d'utiliser cette construction à gauche du `=` (pour remplacer les valeurs de la tranche de liste par celles d'une autre liste.
> - Il est possible d'omettre le `a`, dans ce cas la tranche part du début de la liste.
> - Il est possible d'omettre le `b`, dans ce cas la tranche va jusqu'à la fin de la liste.
> - Il est possible d'omettre le `c`, dans ce cas le pas vaut 1 (exemples : `l[1:8:]`, `l[5::]`, `l[3::]` ).
> - Si le `c` est omis, il est possible d'omettre le second `:` (exemples : `l[1:8]`, `l[5:]`, `l[:3]`).
{: .syntax}
