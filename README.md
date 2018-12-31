# Streamsets-kinesis



## Setup
### pre-configuration
- path info 

```
ex)
export STREAMSETS_HOME=$HOME/works/streamsets-kinesis
export STREAMSETS_DATA=$STREAMSETS_HOME/data
```

- config/runtime.properties

### installation

```
$ cp -R config_template config
$ ./script/build-base.js
$ ./script/build.js
$ ./script/run.js
```

### Include libraries
- `streamsets-datacollector-jdbc-lib`
- `streamsets-datacollector-mysql-binlog-lib`
- `streamsets-datacollector-kinesis-lib`