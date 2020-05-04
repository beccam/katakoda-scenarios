The DataStax Java Driver for Apache Cassandra allows us to interact with Cassandra in the Java programming language.
This short scenario will walk you through using CRUD operations against your instance through the Java Driver.

Enter into in the `quickstart-java` directory. We will be using Maven to manage our dependencies. Dependencies have already been declared in `pom.xml`, including the latest version of Java driver.

`cd ~/quickstart-java`{{execute}}

```
<dependency>
  <groupId>com.datastax.oss</groupId>
  <artifactId>java-driver-core</artifactId>
  <version>${driver.version}</version>
</dependency>
```

To make things easy, we will be using `jshell`. The Java Shell tool (JShell) is an interactive tool for learning the Java programming language and prototyping Java code. Let's start `jshell` from the project directory.

`mvn -q com.github.johnpoth:jshell-maven-plugin:1.3:run`{{execute}}

Once `jshell` is running, there are a few classes that we are going to need to import:

```
import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import java.net.InetSocketAddress;
```

Before we start executing any queries against a Cassandra database, we need to setup an instance of *CqlSession*. *CqlSession* is the main entry point of the driver. It holds the known state of the actual Cassandra cluster, and is what you use to execute queries.

`CqlSession.builder()` provides a fluent API to create an instance programmatically. With it you can explicitly add contact points, a datacenter name, and a keyspace name for your session to connect to.

In the main method, we use `CqlSession.builder()` to add:
* A contact point and InetSocket(`"127.0.0.1", 9042`)
* local datacenter name (``"datacenter1"``)

`CqlSession session = CqlSession.builder().addContactPoint(new InetSocketAddress("127.0.0.1", 9042)).withLocalDatacenter("datacenter1").build();`{{execute}}


## Once you have finished configuring your connection to Cassandra, we can move on to learning about SimpleStatements.                
