---
title: "Boucles while (tant que)"
teaching: 0
exercises: 0
questions:
- "Comment répeter des instructions à l'infini ?"
- "Comment répeter des instructions plusieurs fois ?"
objectives:
- "Savoir écrire une boucle `while`."
keypoints:
- "La boucle `while` (tant que) permet de répéter l'exécution d'un bloc de code."
- "Le corps de la boucle `while` doit être indenté."
---


> ## Syntaxe : Boucles avec `while`
> - Une boucle « tant que »  démarre par le mot clé `while` suivi d'une condition, suivi de `:` puis d'un bloc appelé aussi « corps de la boucle ».
> - Le corps de la boucle est exécuté répétitivement tant que la condition est vraie (valeur `True`).
> 
> ~~~python
> while «condition» :
>     «instruction»
>     «instruction»
>     «…»
>     
> «…» # suite du programme, au même niveau que le `while`
> ~~~
> {: .source}
>
> Une boucle `while` peut être virtuellement ré-écrite à l'aide d'une infinité de `if` imbriqués.
> Ainsi, la boucle :
> ~~~python
> while «A» :
>     «B»         # corps de la boucle
> «C»         # après la boucle
> ~~~
> {: .source}
> 
> est équivalente à :
> 
> ~~~python
> if «A» :
>     «B»
>     if «A» :
>         «B»
>         if «A» :
>             «B»
>             if «A» :
>                 «B»
>                 … # à l'infini
> «C»
> ~~~
> {: .source}
{: .syntax}
