FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["HelloWorldApp.csproj", ""]
RUN dotnet restore "./HelloWorldApp.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "HelloWorldApp.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "HelloWorldApp.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "HelloWorldApp.dll"]
