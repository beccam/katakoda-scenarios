The DataStax Java Driver for Apache Cassandra allows us to interact with Cassandra in the Java programming language.
This short scenario will walk you through using CRUD operations against your instance through the Java Driver.

Wait until Cassandra has finished starting up. Enter the `quickstart-java` directory. We will be using Maven to manage our dependencies.

`cd ~/quickstart-java`{{execute}}

Dependencies have already been declared in `pom.xml`, including the latest version of Java driver.

```
<dependency>
  <groupId>com.datastax.oss</groupId>
  <artifactId>java-driver-core</artifactId>
  <version>${driver.version}</version>
</dependency>
```
Review the dependencies with `cat pom.xml` if you wish, otherwise let's get on with connecting to Cassandra.

To make things easy, we will be using `jshell`. The Java Shell tool (JShell) is an interactive tool for learning the Java programming language and prototyping Java code. Let's start `jshell` from the project directory.

`mvn -q com.github.johnpoth:jshell-maven-plugin:1.3:run`{{execute}}

Once `jshell` is running, we are going to need to import the `CqlSession` class to connect to the cluster, as well as the `cql` package:

```
import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
```{{execute}}

</br>

## Now Apache Cassandra is running ,let's configure our connection to the instance.
