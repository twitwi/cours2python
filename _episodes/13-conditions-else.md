---
title: "Instructions Conditionnelles (2)"
teaching: 0
exercises: 0
questions:
- "Comment exécuter une partie du programme ou l'autre ?"
- "Comment limiter le nombre d'instructions conditionnelles ?"
objectives:
- "Comprendre les mots clés `else` et `elif`."
keypoints:
- "Une conditionnelle `if` peut être suivie d'un ou plusieurs `elif` et d'un `else`."
- "Les `elif` et d'un `else` aident à écrire des programmes plus clairs."
---

> ## Syntaxe : `if` avec `else`
> 
> Le bloc de l'instruction `if` peut être suivi de l'instruction `else:` et d'un bloc qui sera exécuté si la condition est fausse (a la valeur False).
> Ainsi, la condition :
> ~~~
> if «A» :
>     «B»         # corps de la boucle
> else:
>     «C»         # corps du else
> «D»         # après la boucle
> ~~~
> {: .source}
> 
> est équivalente à (sachant que `not(…)` permet de d'inverser une valeur booléenne) :
> 
> ~~~
> if «A» :
>     «B»
> if not(«A») :
>     «C»
> «D»
> ~~~
> {: .source}
{: .syntax}


<!--
> ~~~
> if «condition» :
>     «instruction»
>     «…»
> else:
>     «instruction»
>     «…»
> 
> «…» # suite du programme, au même niveau que le `if` et que le `else`
> ~~~
> {: .source}
-->

> ## Syntaxe : `if` avec `elif`
> 
> Il est possible d'utiliser après un `if` (et avant le potentiel `else`) le mot clé `elif` (pour « else if », signifiant « sinon, si ».
> La construction avec `elif` peut être ré-écrite à l'aide d'un second `if` imbriqué dans le `else`.
> Ainsi, par exemple, la condition :
> ~~~
> if «T1» :
>     «P1»
> elif «T2» :
>     «P2»
> elif «T3» :
>     «P3»
> else:
>     «E»
> «F»         # après la boucle
> ~~~
> {: .source}
> 
> est équivalente à :
> 
> ~~~
> if «T1» :
>     «P1»
> else:
>     if «T2» :
>         «P2»
>     else:
>         if «T3» :
>             «P3»
>         else:
>             «E»
> «F»
> ~~~
> {: .source}
{: .syntax}
