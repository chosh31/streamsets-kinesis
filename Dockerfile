FROM streamsets/datacollector:3.6.1
USER ${SDC_USER}

# custom configured
COPY config/ ${SDC_CONF}/
COPY sdc-extras/ ${STREAMSETS_LIBRARIES_EXTRA_DIR}/
VOLUME [ "/data" ]

ARG SDC_LIBS=streamsets-datacollector-jdbc-lib,streamsets-datacollector-mysql-binlog-lib
RUN if [ -n "${SDC_LIBS}" ]; then "${SDC_DIST}/bin/streamsets" stagelibs -install="${SDC_LIBS}"; fi

EXPOSE 18630

CMD ["dc", "-exec"]