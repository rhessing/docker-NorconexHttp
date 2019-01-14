# docker-NorconexHttp
Norconex HTTP Collector with the SQL Committer

The Norconex HTTP Collector is a spider/crawler written in Java. It uses a fairly low footprint and is highly customizable simply by extending the provided java classes. By using the SQL Comitter the data found by the collector can be imported into a database that supports JDBC, in this case I've included the MySQL libraries but others can be used as well.

Feel free to fork the repository and create your own docker image :-)

This repo is used by docker hub for automated builds.
