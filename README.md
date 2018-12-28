# Streamsets-kinesis



## Setup
### pre-configuration
- path info 

```
export STREAMSETS_HOME=$HOME/works/streamsets-kinesis
export STREAMSETS_DATA=$STREAMSETS_HOME/data
```

### installation

```
$ cp -R config_template config
$ chmod 600 ./config/*-realm.properties
$ ./script/build.js
$ ./script/run.js
```

### Include libraries
- `streamsets-datacollector-jdbc-lib`
- `streamsets-datacollector-mysql-binlog-lib`
- `streamsets-datacollector-kinesis-lib`