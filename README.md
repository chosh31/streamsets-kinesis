# Streamsets-kinesis


## Setup

### pre-configuration

- docker
```
$ sudo usermod -aG docker $USER
```

- change `ulimit` -> minimum `32768`

- path info 

```
ex)
export STREAMSETS_HOME=$HOME/works/streamsets-kinesis
export STREAMSETS_DATA=$STREAMSETS_HOME/data
export STREAMSETS_FS_DATA=$STREAMSETS_HOME/fsData
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