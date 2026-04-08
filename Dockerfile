# Image de base
FROM python:3.10-slim

# Eviter les fichiers inutiles
WORKDIR /app

# Copier requirements d'abord (cache Docker)
COPY app/requirements.txt .

# Installer dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code
COPY app/ .

# Exposer le port
EXPOSE 5000

# Lancer l'application
CMD ["python", "app.py"]
