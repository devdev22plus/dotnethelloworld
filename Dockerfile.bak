FROM microsoft/dotnet:2.2.0-aspnetcore-runtime as runtime
WORKDIR /app

#COPY ./bin/release/netcoreapp2.2/publish ./
COPY . .

ENV IS_DOCKER_ENV=true
CMD ASPNETCORE_URLS=http://*:$PORT dotnet dotnethelloworld.dll

