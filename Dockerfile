FROM node:18

# Establecer directorio de trabajo
WORKDIR /app

# Instalar n8n
RUN npm install -g n8n

# Crear carpeta de datos para persistencia
RUN mkdir .n8n

# Exponer el puerto que usará n8n
EXPOSE 5678

# Comando de inicio
CMD ["n8n"]
