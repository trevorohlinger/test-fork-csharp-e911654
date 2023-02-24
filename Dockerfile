FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine AS build-env
WORKDIR /App

# Copy everything
COPY ./csharp.Api/ ./
# Restore as distinct layers
RUN dotnet restore
# Build and publish a release
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0-alpine
WORKDIR /App
EXPOSE 5000
COPY --from=build-env /App/out .
ENV ASPNETCORE_URLS=http://+:5000
ENTRYPOINT ["dotnet", "csharp.Api.dll"]


#docker build -t template-backstage -f Dockerfile . 
#docker run --rm -p 5000:5000 -e ASPNETCORE_URLS=http://+:5000 template-backstage