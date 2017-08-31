---
title: "Entrées Utilisateur"
teaching: 0
exercises: 0
questions:
- "Comment recevoir des entrées textuelles de l'utilisateur ?"
- "Comment recevoir des entrées numériques de l'utilisateur ?"
objectives:
- "Comprendre la notion de paramètres d'un programme."
- "Savoir comment, dans un programme, demander à l'utilisateur de taper une chaîne de caractères."
- "Savoir convertir des chaînes de caractères en entier ou réel, et vice-versa."
keypoints:
- "Quand on lance un programme il est possible d'y ajouter des paramètres, par exemple, `python3 monprogramme.py toto 42`."
- "La variable `argv` contenue dans le module `sys` permet d'accéder au paramètres du programme."
- "On peut accéder au nom du fichier python avec `sys.argv[0]` (qui vaut `monprogramme.py` dans l'exemple)."
- "On peut accéder au premier paramètre du programme avec `sys.argv[1]` (qui vaut `toto` dans l'exemple)."
- "Avec `len(sys.argv)` on obtient un nombre entier contenant le nombre de paramètres + 1 (ce 1 vient du fait que l'on a aussi accès au nom du fichier python)."
- "Dans un programme, la fonction `input()` attend que l'utilisateur tape une ligne de texte au clavier et renvoie ce qui a été tapé."
- "La fonction `input(…)` peut accepter un paramètre appelé le *prompt*, c'est à dire qu'il sera affiché pour inciter l'utilisateur à taper."
- "Il faut bien comprendre la distinction entre les paramètres d'un programme (dans `sys.argv`) et la fonction `input`."
- "Les paramètres sont des chaînes de caractères."
- "Dans tous les cas `input(…)` renvoie une chaîne de caractères."
- "On peut convertir une valeur en entier avec `int(…)`, en flottant avec `float(…)` ou en chaîne de caractères avec `str(…)` (pour *string*)."
---

> ## Multiplication de ce qui est tapé !
> Écrire un programme qui demande à l'utilisateur « Entrez un nombre : », puis affiche exactement ce qui a été entré multiplié par l'entier 5.
> 
> Que se passe-t-il quand l'utilisateur tape `123` ?
> et quand il tape `Hey` ?
> pourquoi ?
> 
> > ## Solution
> > ~~~python
> > v = input("Entrez un nombre : ")
> > print(v * 5)
> > ~~~
> > {: .source}
> > 
> > Quand l'utilisateur tape `123`, le programme affiche `123123123123123` ?!
> > et il affiche `HeyHeyHeyHeyHey` quand l'utilisateur tape `Hey`.
> > 
> > Input renvoie toujours une chaîne de caractères donc `123` est une chaîne comme si on avait écrit dans le programme `v = "123"`.
> > La multiplication d'une chaîne par un nombre entier permet de répéter la chaîne (ici 5 fois).
> > Le comportement est donc normal et attendu.
> {: .solution}
{: .challenge}

