---
title: "Un Premier Programme"
teaching: 0
exercises: 0
questions:
- "Comment et où écrire un programme en Python ?"
- "Comment lancer/exécuter ce programme Python ?"
objectives:
- "Savoir écrire un programme dans un fichier texte brut."
- "Savoir utilisez la commande `python3` pour lancer/exécuter le programme."
- "Savoir afficher un nombre et du texte en Python."
- "Savoir écrire un commentaire en Python."
keypoints:
- "Un programme Python est un fichier texte brut."
- "L'extension normale pour les programmes Python est `.py`, par exemple `nomDuFichier.py`."
- "Un programme Python s'exécute avec `python3 nomDuFichier.py`."
- "En Python, `print(…)` permet de produire une sortie qui sera affichée dans le terminal."
- "La plupart des espaces (caractère ` `) sont insignifiant, sauf en début de ligne."
- "Du « texte » est aussi appelé une « chaîne de caractères » ou *string* (en anglais)."
- "En Python, `len(…)` permet d'obtenir la longueur d'une chaîne de caractères (le nombre de caractères qu'elle contient)."
- "En Python, une chaîne de caractère doit être entre guillemets."
- "On peut utiliser au choix les guillemets simples `'toto'` ou les doubles `\"toto\"` pour les chaînes de caractères."
---

> ## Syntaxe : commentaires
> - Toute ligne qui commence par `#` (dièse) est ignorée par Python.
> - Tout ce qui suit un `#` est ignoré par l'interpréteur Python (sauf dans une chaîne de caractères).
> 
> ~~~python
> # Toute cette ligne est un commentaire
> print("Bonjour") # Ceci est un commentaire
> print("Suivez #python ! (et ce n'est pas un commentaire).")
> ~~~
> {: .source}
{: .syntax}
