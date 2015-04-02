
# Exercice 1

Dans un premier temps, on initialise `DIR` au dossier home avec `~`.
Ensuite, on demande la taille à partir de laquelle les fichiers seront listés : on demande un nombre.
Les fichiers sont cherchés via la commande `find`.

* `DIR` pour le dossier de recherche
* `-type f` pour limiter la recherche aux simples fichiers
* `-size +$(echo $SIZE)M` pour filtrer selon la taille (supérieur au nombre que l'on a entré précedemment en, méga octet)
* `-printf "%s %P\n"` pour afficher la taille et le nom des fichiers trouvés
* `sort -n -r > out.txt` pour trier selon la taille décroissantte. La sortie est ensuite redirigée vers le fichier `out.txt`

L'affichage des résultats se fait via le fichier `out.txt`

# Exercice 3

Toutes les fonctions utilisées pour faire ce script ont suggérées dans le sujet et il suffit d'utiliser le `man` pour ensuite adapter en fonction de ce que l'on veut.
Les informations ont été récupérées via les commandes `cut` et `head` qui permettent de découper le texte respectivement octet par octet et ligne par ligne.

