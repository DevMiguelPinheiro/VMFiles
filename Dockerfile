# Use the official Eclipse Mosquitto image
FROM eclipse-mosquitto

# Copy generic Mosquitto configuration files
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY acl_file /mosquitto/config/acl_file


# Expose default Mosquitto ports
EXPOSE 1883 9001

# Start Mosquitto broker
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]