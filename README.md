# docker-NorconexHttp
Norconex HTTP Collector with the SQL Committer

Includes the following JDBC drivers:
- PostgreSQL version 42.2.5
- MySQL version 8
- Apache Cassandra (also works for ScyllaDB), maintained by DBSchema

The Norconex HTTP Collector is a spider/crawler written in Java. It uses a fairly low footprint and is highly customizable simply by extending the provided java classes. By using the SQL Comitter the data found by the collector can be imported into a database that supports JDBC.

Feel free to fork the repository and create your own docker image from:
https://github.com/rhessing/docker-NorconexHttp

This repo is used by docker hub for automated builds.

The default configuration is generated on the fly when the container starts except if the default.xml configuration file already exists.

When using this docker image please mount your own classes directory on top off: /opt/collector-http/classes
To change the settings please mount your own configuration on top off: /opt/collector-http/config/default.xml