FROM eclipse-mosquitto:latest

# Copiar arquivo de configuração
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Expor portas
EXPOSE 1883
EXPOSE 9001

# Configurar healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD mosquitto_sub -t "$$SYS/#" -C 1 -W 1 || exit 1 