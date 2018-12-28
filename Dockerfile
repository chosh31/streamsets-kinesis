FROM streamsets/datacollector:3.6.1

USER ${SDC_USER}

ARG SDC_LIBS=streamsets-datacollector-jdbc-lib,streamsets-datacollector-mysql-binlog-lib,streamsets-datacollector-kinesis-lib

# custom configured
COPY config/ ${SDC_CONF}/
COPY sdc-extras/ ${STREAMSETS_LIBRARIES_EXTRA_DIR}/

RUN chmod 600 ${SDC_CONF}/*-realm.properties
RUN if [ -n "${SDC_LIBS}" ]; then "${SDC_DIST}/bin/streamsets" stagelibs -install="${SDC_LIBS}"; fi

VOLUME [ "/data" ]
EXPOSE 18630

CMD ["dc", "-exec"]