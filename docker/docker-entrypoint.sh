#!/bin/sh
set -x
set -e

# config file location
config_file="config/default.xml"

if [ ! -f $config_file ]; then

# HTTP Collector minimum configuration file contents
cat << EOF > $config_file
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xml>
<httpcollector id="Minimum Config HTTP Collector">
  <progressDir>./output/progress</progressDir>
  <logsDir>./output/logs</logsDir>

  <crawlers>
    <crawler id="Norconex Minimum Test Page">

      <startURLs stayOnDomain="true" stayOnPort="true" stayOnProtocol="true">
        <url>https://www.norconex.com/product/collector-http-test/minimum.php</url>
      </startURLs>

      <workDir>./output</workDir>
      <maxDepth>0</maxDepth>
      <sitemapResolverFactory ignore="true" />
      <delay default="5000" />
      
      <importer>
        <postParseHandlers>
          <tagger class="com.norconex.importer.handler.tagger.impl.KeepOnlyTagger">
            <fields>title,keywords,description,document.reference</fields>
          </tagger>
        </postParseHandlers>
      </importer> 
      
      <committer class="com.norconex.committer.core.impl.FileSystemCommitter">
        <directory>./output/crawledFiles</directory>
      </committer>

    </crawler>
  </crawlers>
</httpcollector>
EOF

fi

echo "Norconex HTTP Collector configuration completed, starting HTTP Collector"

${CRAWLER_HOME}/collector-http.sh -a start -c ${config_file}