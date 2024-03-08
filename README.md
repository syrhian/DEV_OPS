# DEV_OPS

## <u>docker-compose.yml</u>

contient la configuration de 2 conteneurs :
- php MyAdmin
- MySQL

les mot de passes sont secret (.env en local et dans les github secret)


## <u>release.yml</u>

le fichier de workflow pour le Github Actions

il contient la configuration suivante :
1. s'éxécute lors d'un push sur la branche relWorkflow
2. un job de "*test*" destiné a tester le bon fonctionnement lors de l'exécution des conteneurs
3. un job de "*build_package*" qui va monter les conteneurs
4. un job de "*scan_security*" pour tester la sécurité du code (éviter fuite de donnée sensibles)
5. enfin un job de "*release*" qui si les 2 jobs précédents sont validé créer une release sur le git avec son numéro de version
