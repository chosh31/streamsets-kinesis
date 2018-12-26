FROM streamsets/datacollector:3.6.1
USER ${SDC_USER}

# custom configured
COPY config/sdc.properties /etc/sdc/sdc.properties
COPY config/form-realm.properties /etc/sdc/form-realm.properties
EXPOSE 18630

CMD ["dc", "-exec"]