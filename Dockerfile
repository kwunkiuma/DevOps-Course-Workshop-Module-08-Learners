FROM mcr.microsoft.com/dotnet/sdk:6.0
COPY . .
RUN apt-get update
RUN apt-get install -y npm
RUN dotnet build

WORKDIR /DotnetTemplate.Web
RUN npm ci
RUN npm run build

ENTRYPOINT [ "dotnet", "run" ]
