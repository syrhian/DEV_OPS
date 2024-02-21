# DEV_OPS

Comparaison des Procédures (Montage de Volume vs Copie)
Montage de Volume :
Avantages :

Permet de modifier les fichiers sur le système hôte sans avoir à reconstruire l'image Docker.
Utile pour le développement, car les modifications apportées aux fichiers sont immédiatement visibles sans nécessiter une reconstruction de l'image.
Inconvénients :

Les fichiers doivent être présents sur le système hôte au moment de l'exécution du conteneur.
Moins portable, car les dépendances reposent sur l'existence de fichiers sur le système hôte.
Copie de Fichiers dans l'Image :
Avantages :

Tout est encapsulé dans l'image, ce qui la rend plus portable.
Utile pour les environnements de production où la cohérence de l'environnement est importante.
Inconvénients :

Nécessite de reconstruire l'image si les fichiers changent, ce qui peut être coûteux en termes de temps lors du développement.
Les modifications des fichiers nécessitent une nouvelle construction de l'image.

docker pull mysql
docker pull phpmyadmin
docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=Passw0rd -p 3306:3306 -d mysql:latest
docker run --name phpmyadmin-container -d --link mysql-container:db -p 8080:80 phpmyadmin/phpmyadmin:latest

docker run permet l'exécution d'un conteneur a la fois avec des paramètres précis tandis que compose sert a la gestion de plusieurs conteneurs a la fois a l'aide d'un fichier .yaml il permet aussi une configuration moin anarchiques lors de configuration complexes
docker-compose up -d
docker-compose down