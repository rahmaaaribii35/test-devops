# Étape 1 : image de base
FROM node:18-alpine

# Étape 2 : définir le répertoire de travail
WORKDIR /app

# Étape 3 : copier package.json et package-lock.json
COPY package*.json ./

# Étape 4 : installer les dépendances
RUN npm install

# Étape 5 : copier tout le reste du code
COPY . .

# Étape 6 : exposer le port 3000
EXPOSE 3000

# Étape 7 : démarrer l'application
CMD ["npm", "run", "dev"]
