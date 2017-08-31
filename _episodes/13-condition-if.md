---
title: "Instructions Conditionnelles"
teaching: 0
exercises: 0
questions:
- "Comment n'exécuter certaines parties du programme que dans certains cas ?"
objectives:
- "Comprendre l'instruction `if`."
- "Comprendre ce qu'est l'indentation et son importance en Python."
- "Découvrir les opérateurs de comparaison disponibles en Python."
keypoints:
- "Python dispose des opérateurs de comparaison `==`, `!=`, `<`, `<=`, `>`, `>=`."
- "Une comparaison est soit vraie (valeur `True`), soit fausse (valeur `False`)."
- "L'exécution conditionnelle s'exprime grâce au mot clé `if`."
- "L'indentation (nombre d'espaces en début de ligne) est capitale en Python car elle défini un bloc de code."
- "Il est possible d'imbriquer des `if` (mettre un `if` dans le bloc d'un autre `if`)."
---

> ## De combien indenter un bloc ?
> Bien qu'il soit possible d'utiliser le nombre d'espace que l'on veut pour indenter un bloc, il est fortement recommandé d'utiliser 4 espaces (puis 8 pour les blocs imbriqués, et ainsi de suite).
> Les tabulations ne doivent pas être utilisées pour l'indentation. 
{: .zoom}

> ## Syntaxe : Instruction conditionnelles avec `if`
> - Une insruction conditionnelle démarre par le mot clé `if` suivi d'une condition (appelé aussi test), suivi de `:` puis d'un bloc.
> - Un bloc est constitué d'une ou plusieurs lignes d'un programme qui sont indentées (toute commençant par plus d'espace que la ligne `if` et toute avec le même nombre d'espace.) ; visuellement le bloc est décalé vers sur la droite.
> 
> ~~~python
> if «condition» :
>     «instruction»
>     «instruction»
>     «…»
>     
> «…» # suite du programme, au même niveau que le `if`
> ~~~
> {: .source}
{: .syntax}

