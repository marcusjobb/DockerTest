# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
RUN ls
COPY ../ ./
RUN dotnet restore ASPHellworld.sln

# Copy everything else and build
RUN dotnet publish -c Release -o out

# Run tests
# RUN dotnet test

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "ASPHellworld.dll"]
