# Usa una imagen base de Node.js
FROM node:16-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /jimenez_santiago_site

# Copia el package.json y el package-lock.json (si existe)
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto del código de la aplicación al contenedor
COPY . .

# Exponer el puerto 7775
EXPOSE 7775

# Iniciar la aplicación en modo desarrollo y vincularla al puerto 7775
CMD ["npm", "start"]
