FROM microsoft/aspnet:1.0.0-rc1-final-coreclr

COPY . /app
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 5004
ENTRYPOINT ["dnx", "-p", "src/dotnetstarter/project.json", "kestrel", "--server.urls", "http://0.0.0.0:5004"]
