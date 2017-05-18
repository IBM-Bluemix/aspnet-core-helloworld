FROM microsoft/aspnet:1.0.0-beta8-coreclr

COPY src/dotnetstarter/project.json /app/src/dotnetstarter/
WORKDIR /app
RUN ["dnu", "restore"]
COPY . /app/

EXPOSE 5004
CMD ["dnx", "-p", "src/dotnetstarter/project.json", "kestrel"]
