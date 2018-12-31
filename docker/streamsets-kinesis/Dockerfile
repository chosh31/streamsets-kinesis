FROM streamsets-kinesis-base:3.6.1

USER ${SDC_USER}

# custom configured
COPY config/ ${SDC_CONF}/
COPY sdc-extras/ ${STREAMSETS_LIBRARIES_EXTRA_DIR}/

RUN chmod 600 ${SDC_CONF}/*-realm.properties

VOLUME [ "/data" ]
EXPOSE 18630

CMD ["dc", "-exec"]