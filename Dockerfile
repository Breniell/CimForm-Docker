FROM bitnami/moodle:4.5.3

USER root
# Copie votre plugin dans le répertoire Moodle
COPY local/cimencamplus /opt/bitnami/moodle/local/cimencamplus
RUN chown -R 1001:1001 /opt/bitnami/moodle/local/cimencamplus

USER 1001
