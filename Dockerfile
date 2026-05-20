FROM wiremock/wiremock:3.5.2

# Copia os mappings e arquivos estáticos (JSONs de resposta) para dentro do container
COPY mappings/ /home/wiremock/mappings/
COPY __files/ /home/wiremock/__files/

# Render usa a variável de ambiente PORT para definir a porta (default 8080)
# O WireMock usa a flag --port
CMD ["--port", "8080", "--global-response-templating", "--disable-gzip"]
