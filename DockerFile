# Usa l'immagine di base di Nginx
FROM nginx

# Copia il tuo file di configurazione personalizzato in Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copia i file statici del tuo sito nella cartella di default di Nginx
COPY static-files /usr/share/nginx/html

# Esponi la porta 80 per consentire l'accesso al server web
EXPOSE 80

# Avvia Nginx quando viene avviato il container
CMD ["nginx", "-g", "daemon off;"]