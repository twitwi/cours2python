---
title: "Boucles for"
teaching: 0
exercises: 0
questions:
- "Comment appliquer un morceau de programme sur chaque élément d'une liste ?"
- "Comment éviter certains copier/coller dans un programme ?"
objectives:
- "Comprendre le principe de la boucle `for`."
- "Comprendre comment écrire une boucle `for`."
keypoints:
- "À l'aide de `for`, il est aussi possible de parcourir les caractères d'une chaîne de caractères."
- "La boucle `while` permets aussi de réaliser un parcours à la manière de `for`."
---




> ## Syntaxe : Boucles avec `for`
> - Une boucle « pour chaque »  démarre par le mot clé `for` (pour) suivi d'un nom de variable, du mot clé `in` (dans), d'une liste d'éléments, de `:` et finalement d'un bloc appelé aussi « corps de la boucle ».
> - Pour chaque élément de la liste, la variable est affecté à la valeur de cet élément et le corps de la boucle est exécuté.
> - Le corps de la boucle est donc exécuté autant de fois qu'il y a d'éléments dans la liste donnée.
> 
> ~~~
> for «var» in «liste» :
>     «instruction»
>     «instruction»
>     «…»
>     
> «…» # suite du programme, au même niveau que le `for`
> ~~~
> {: .source}
> 
> Par exemple, si l'on considère que la liste est `[10, 20, 30]`, alors la boucle :
> 
> ~~~
> for «var» in [10, 20, 30] :
>     «A»
> «B»
> ~~~
> {: .source}
> 
> est équivalente à :
> 
> ~~~
> «var» = 10
> «A»
> «var» = 20
> «A»
> «var» = 30
> «A»
> «B»
> ~~~
> {: .source}
{: .syntax}

