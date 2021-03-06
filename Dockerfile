#For Build in Docker
#FROM microsoft/aspnetcore-build:2 AS build-env
#WORKDIR /source
#COPY . .
#RUN dotnet restore
#RUN dotnet publish -c Release -o /app/

#FROM microsoft/dotnet:2.0-runtime
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
ENV IS_DOCKER_ENV=true
WORKDIR /app

#COPY --from=build-env /app .
COPY . .

#ลบตรงนี้เนื่องจากจะใช้การแชร์จาก docker volume เข้าไปแทน
RUN rm -rf wwwroot

CMD ASPNETCORE_URLS=http://*:$PORT dotnet dotnethelloworld.dll
