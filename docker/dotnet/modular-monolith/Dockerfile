
# Etapa 1: Compilación
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build

WORKDIR /src

# Copiar la solución
COPY *.sln ./

# Copiar los proyectos y sus archivos de configuración
COPY src/Biblioteca.Api/*.csproj src/Biblioteca.Api/
COPY src/Biblioteca.Catalogo/*.csproj src/Biblioteca.Catalogo/
COPY src/Biblioteca.Prestamos/*.csproj src/Biblioteca.Prestamos/
COPY src/Biblioteca.Infrastructure/*.csproj src/Biblioteca.Infrastructure/

# Restaurar dependencias
RUN dotnet restore

# Copiar el código fuente
COPY . .

# Publicar el proyecto ejecutable
RUN dotnet publish src/Biblioteca.Api/Biblioteca.Api.csproj \
    -c Release \
    -o /app/publish \
    --no-restore

# Etapa 2: Ejecución
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final

WORKDIR /app

COPY --from=build /app/publish .

ENV ASPNETCORE_HTTP_PORTS=8080

EXPOSE 8080

ENTRYPOINT ["dotnet", "Biblioteca.Api.dll"]
