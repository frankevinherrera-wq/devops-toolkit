
# Etapa 1: Dependencias y compilación
FROM node:22-alpine AS build

WORKDIR /app

# Copiar manifiestos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm ci

# Copiar código fuente
COPY . .

# Construir aplicación si existe script build
RUN npm run build --if-present

# Etapa 2: Ejecución
FROM node:22-alpine AS final

WORKDIR /app

ENV NODE_ENV=production

# Copiar dependencias y aplicación
COPY --from=build /app/package*.json ./
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app ./

EXPOSE 3000

# Adaptar al punto de entrada del proyecto
CMD ["npm", "start"]
