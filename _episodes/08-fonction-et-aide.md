---
title: "Fonctions Prédéfinies et Aide"
teaching: 0
exercises: 0
questions:
- "D'où viennent les fonctions `print(…)`, `min(…)`, `len(…)`, etc ?"
- "Y-a-t-il un manuel d'utilisation pour ces fonctions ?"
objectives:
- "Se familiariser avec le concept d'appel de fonction fonction."
- "Comprendre le concept de « valeur de retour » d'une fonction."
- "Savoir afficher le manuel d'une fonction."
keypoints:
- "Python fourni un ensemble de fonctions prédéfinies telles que `print`, `abs`, `min`, `max`, `len`, `help`.
  <!-- éviter `sum` puisque l'on a pas vu les listes pour l'instant -->"
- "On « appelle » la fonction (on l'exécute) quand on écrit son nom suivi de valeurs de paramètres entre parenthèses."
- "Une fonction peut accepter un nombre arbitraire de paramètres (y compris aucun paramètre)."
- "Chaque fois que l'on appelle une fonction, une valeur est retournée."
- "La valeur spéciale `None` représente une valeur vide."
- "La fonction prédéfinie `help(…)` permet d'afficher « interactivement » le manuel d'une fonction."
---

~~~
la_doc = min.__doc__
print(la_doc)
~~~
