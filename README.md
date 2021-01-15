# README

- S'assurer d'avoir l'environnement ruby, bundler, postgresql installé
- Récupérer le projet github
- `bundle install` pour installer les dépendences du projet rails
- `bin/setup`
- Migrer la base de donnée `rails db:migrate`
- Intégrer les données par défaut la DB `RAILS_ENV=development rails db:fixtures:load`
- `rails server` pour lancer le serveur
- Une fois le serveur lancé, les instructions seront disponibles sur `http://localhost:3000/one`
