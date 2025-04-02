# Use a imagem oficial do Eclipse Mosquitto
FROM eclipse-mosquitto

# Copia os arquivos de configuração para o diretório correto
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY acl_file /mosquitto/config/acl_file

# Expõe as portas padrão do Mosquitto
EXPOSE 1883 9001

# Usa o comando padrão da imagem oficial para iniciar o Mosquitto
