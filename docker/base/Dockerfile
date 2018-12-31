FROM streamsets/datacollector:3.6.1

# USER ${SDC_USER}

ARG SDC_LIBS=streamsets-datacollector-jdbc-lib,streamsets-datacollector-mysql-binlog-lib,streamsets-datacollector-kinesis-lib
RUN if [ -n "${SDC_LIBS}" ]; then "${SDC_DIST}/bin/streamsets" stagelibs -install="${SDC_LIBS}"; fi