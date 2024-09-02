# Ein Node.js version 22 Image als Basis verwendet
FROM node:22

# Arbeitsverzeichnis definiert
WORKDIR /hello-docker-app

# Kopiere package.json in das Arbeitsverzeichnis
COPY package.json .

# Installiere Abhaengigkeiten
RUN npm install

# Kopiere den Rest der App in das Arbeitsverzeichnis
COPY . .

# Oefnne den Port 3000
EXPOSE 3000

# Definiere den Befehl, der die App startet
CMD [ "node", "app.js" ]