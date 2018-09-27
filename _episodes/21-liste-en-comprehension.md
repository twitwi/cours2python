---
title: "Listes en compréhension"
teaching: 0
exercises: 0
questions:
- "Comment simplifier la création de listes ?"
objectives:
- "Découvrir la syntaxe de « liste en compréhension »."
- "Comprendre que ce n'est qu'un raccourci pour un `for` avec append."
keypoints:
- "Il est possible de mettre un `for` dans des crochets pour créer une liste."
- "Les listes en compréhesion peuvent contenir des conditions `if` et être imbriquées."
---

Il est souvent nécessaire dans un programme d'appliquer un calcul sur chacun des éléments d'une liste.
Le résultat de ces calculs est souvent stocké dans une nouvelle liste.
Par exemple, si nous avons une liste de nombres dont nous voulons calculer le carré, nous allons mettre ces nombres dans une liste, par exemple ici dans `nbs` :

~~~python
nbs = [1, 42, 100, 0.5]
~~~
{: .source}

et remplir, à l'aide d'une boucle et de `append`, une nouvelle liste avec les carrés de ces nombres, que l'on appelle dans cet exemple `carres` :

~~~python
carres = []
for v in nbs:
    carres.append(v**2)
~~~
{: .source}

Ce besoin est tellement fréquent que Python nous propose une syntaxe (façon d'écrire le programme) qui permet de rendre, avec l'habitude, le programme plus facile à lire (et écrire).
Ainsi, la définition et le remplissage de `carres` ci-dessus, peut être remplacée de manière équivalente par :

~~~python
carres = [v**2 for v in nbs]
~~~
{: .source}

Cette construction est appelée « liste en compréhension ».

Il n'y a pas de contrainte particulière sur la liste parcourue par le `for`.
Ainsi, il est tout à fait possible d'utiliser la fonction `range`, par exemple pour remplir une liste des carrés des nombres de 1 à 100 :

~~~python
carres100 = [v**2 for v in range(1, 101)]
~~~
{: .source}

Si besoin, on peut aussi ajouter une condition après le `for`, comme ici :
~~~python
cubes_des_multiples_de_4 = [v**3 for v in range(1, 101) if n%4==0]
~~~
{: .source}

On peut aussi créer des listes de listes en imbriquant plusieurs listes en compréhension, comme ici :

~~~python
tab = [ [ 10*i + j for j in range(5) ] for i in range(4) ]
~~~
{: .source}

qui produit une liste de 4 éléments, chacun de ces éléments étant lui même une liste de 5 éléments (qui sont calculés en fonction des valeurs de i et j), qui s'affiche comme ça :

~~~
[[0, 1, 2, 3, 4], [10, 11, 12, 13, 14], [20, 21, 22, 23, 24], [30, 31, 32, 33, 34]]
~~~
{: .output}

ou avec un peu de remise en forme :

~~~
[ [0,   1,  2,  3,  4],
  [10, 11, 12, 13, 14],
  [20, 21, 22, 23, 24],
  [30, 31, 32, 33, 34]  ]
~~~
{: .output}

dans lequel on aura par exemple `tab[3][1]` qui vaut 31.


> ## Syntaxe : Liste en compréhension
> - Une liste en compréhension est un raccourci pour créer une liste par ajout successifs d'éléments.
> - Une liste en compréhension utilise des crochets (`[` et `]`] comme une liste classique, mais dans lesquelles on mets une expression suivie d'un `for`.
> - Pour chaque élément de la liste venant après `for`,  l'expression est évaluée et le résultat est ajouté dans la liste finale.
> 
> ~~~python
> [ «expr» for «var» in «liste»]
> ~~~
> {: .source}
> 
> La liste en compréhension peut être utilisée partout où une liste peut l'être.
> Ainsi, par exemple :
> 
> ~~~python
> «r» = [ «expr» for «var» in «liste»]
> ~~~
> {: .source}
> 
> est équivalente à :
> 
> ~~~python
> «r» = []
> for «var» in «liste»:
>     «r».append(«expr»)
> ~~~
> {: .source}
{: .syntax}


> ## Syntaxe : Liste en compréhension avec condition
> Ainsi, par exemple :
> 
> ~~~python
> «var2» = [ «expr» for «var» in «liste» if «cond»]
> ~~~
> {: .source}
> 
> est équivalente à :
> 
> ~~~python
> «var2» = []
> for «var» in «liste»:
>     if «cond»:
>         «var2».append(«expr»)
> ~~~
> {: .source}
{: .syntax}
