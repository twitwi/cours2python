---
title: "Définitions de fonctions"
teaching: 0
exercises: 0
questions:
- "Comment créer un code plus lisible ?"
- "Comment définir ses propres fonctions ?"
- "Comment éviter certains copier/coller dans un programme ?"
objectives:
- "Comprendre comment définir une fonction avec `def`."
- "Comprendre les paramètres d'une fonction."
- "Comprendre la valeur de retour d'une fonction."
- "Distinguer la définition d'une fonction de ses appels."
keypoints:
- "Une fonction peut être définie à l'aide de `def`."
- "Une fonction a un nombre arbitraire de paramètres."
- "Une fonction retourne toujours une valeur."
- "L'instruction `return` permet d'interrompre la fonction et de renvoyer une valeur."
- "La valeur spéciale `None` représente l'absence de valeur (de retour)."
---


## Appel de fonctions et abstraction

Nous avons vu comment utiliser des fonctions existantes, telles que `print`, `help`, `len` (prédéfinies), `log`, `sqrt`, `sin` (du module `math`), `random`, `randrange` (du module `random`), `creer`, `couleur`, `disque` (du module `qtido`).
Pour pouvoir utiliser certaines fonctions, il faut les importer, comme vu précédemment.
Une fois cela fait, nous pouvons utiliser la fonction autant de fois que voulu.
L'utilisation d'une fonction s'appelle « un appel une fonction ».

Une fonction sers généralement à simplifier l'écriture et la lecture d'un programme.
Supposons que l'on a deux variables représentant les coordonnées d'un vecteur.

~~~python
x = 40
y = 30
~~~

Pour calculer la longueur du vecteur (x, y) et stocker sa valeur dans une nouvelle variable, on pourrait écrire :

~~~python
d = (x**2 + y**2) ** 0.5
~~~

Si on a souvent besoin, de calculer la longueur d'un vecteur (appelée aussi « norme »), on préférais, pour éviter de se répéter et pour rendre le programme plus lisible :

~~~python
d = norme(x, y)
~~~

En cachant (abstrayant) les détails d'une opération ou d'un calcul complexe, une fonction permet de simplifier l'écriture et la lecture d'un programme, et d'éviter certaines erreurs.
Comme exemple, voici un extrait de programme dans lequel on suppose qu'il existe des variables `x1`, `y1`, `x2`, `y2`, contenant les coordonnées de 2 vecteurs.
Deux versions sont données, avec et sans l'utilisation de la fonction `norme`.

~~~python
# Avec la fonction norme, sans variables
if norme(x1, y1) < norme(x2, y2):
    print("x1 est plus court avec comme norme", norme(x1, y1))
elif norme(x1, y1) > norme(x2, y2):
    print("x2 est plus court avec comme norme", norme(x2, y2))
else:
    print("x1 et x2 ont la même norme", norme(x1, y1))

# Sans la fonction norme, sans variables
if (x1**2 + y1**2) ** 0.5 < (x2**2 + y2**2) ** 0.5:
    print("x1 est plus court avec comme norme", (x1**2 + y1**2) ** 0.5)
elif (x1**2 + y1**2) ** 0.5 > (x2**2 + y2**2) ** 0.5:
    print("x2 est plus court avec comme norme", (x2**2 + y2**2) ** 0.5)
else:
    print("x1 et x2 ont la même norme", (x1**2 + y1**2) ** 0.5)
~~~


Comme exemple, prenons une fonction que l'on voudrais.
Il est possible de définir une fonction, par exemple une fonction `norme` qui prendrais deux paramètres (les coordonnées d'un vecteur) et renverrait sa norme.
On aimerai pouvoir utiliser

# Définition de fonction simple

La fonction `norme` n'existe en fait pas.
Il est possible de définir cette fonction à l'aide du mot clé Python `def`, par exemple de la façon suivante :

~~~python
def norme(x, y):
    d = x**2 + y**2
    return d ** 0.5
~~~

C'est ce que l'on appelle une définition de fonction.
En soit, cette définition ne fait rien : quand l'interpréteur Python voit cette définition, il n'exécute pas sont contenu.
Une fois cette fonction définie, il est par contre possible de l'utiliser.
Le mot clé `return` permet de spécifier quelle valeur un appel de la fonction prendra.
C'est pour cela que l'on mettra les définitions de fonction au tout début des fichiers Python (`.py`), juste après les imports.

# Sémantique de l'appel d'une fonction

Le contenu d'une fonction est aussi appelé le « corps de la fonction » et est exécuté à chaque appel de fonction.
Ainsi, le programme suivant (qui affiche la longueur du vecteur (3,4) et celle du vecteur (40, 30) :

~~~python
def norme(x, y):
    d = x**2 + y**2
    return d ** 0.5
    
print(norme(3, 4))
print(norme(40, 30))
~~~

est globalement équivalent à :

~~~python
appel1_x = 3
appel1_y = 4
appel1_d = appel1_x**2 + appel1_y**2
appel1 = appel1_d ** 0.5

print(appel1)

appel2_x = 40
appel2_y = 30
appel2_d = appel2_x**2 + appel2_y**2
appel2 = appel2_d ** 0.5

print(appel2)
~~~

Certains points sont très importants :

- chaque appel de fonction a ses propres variables `x` et `y`, auxquelles sont affectées les valeurs passées dans l'appel (3 et 4, puis 40 et 30),
- chaque appel de fonction a sa propre variable `d`, qui n'existe que pendant cet appel,
- l'instruction `return` donne la valeur par laquelle sera remplacée l'appel (par exemple, `norme(3, 4)` vaut la valeur de `appel1`).

## L'instruction `return` termine la fonction

L'instruction `return` termine directement la fonction.
Ainsi, les deux fonctions suivantes ont le même comportement :

~~~python
def plus_petit1(a, b):
    if a < b:
        return a
    else:
        return b

def plus_petit2(a, b):
    if a < b:
        return a  # ce "return" quitte directement la fonction
    return b
~~~

Puisque l'instruction `return a` interrompt la fonction, l'instruction `return b` ne sera exécuté que si `a` n'est pas plus petit que `b`.


> ## Syntaxe : Définition de fonction
> - Une définition de fonction démarre par le mot clé `def` (définir) suivi d'un nom de fonction, d'une suite de paramètres entre parenthèses, de `:` et finalement d'un bloc appelé aussi « corps de la fonction ».
> - Chaque paramètres est un nom de variable.
> - La définition de la fonction ne fait rien en soit, le corps de la fonction n'est appelé que lorsqu'on appelle la fonction.
> 
> ~~~
> def «nom»(«var1», «var2», ...):
>     «instruction»
>     «instruction»
>     «…»
>     
> «…» # suite du programme, au même niveau que le `def`
> ~~~
> {: .source}
> 
{: .syntax}

