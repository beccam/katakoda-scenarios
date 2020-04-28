
`curl -L "<paste link here>" > creds.zip`


`cd quickstart-java; mvn compile`{{execute}}

`mvn com.github.johnpoth:jshell-maven-plugin:1.3:run`{{execute}}

`import com.datastax.oss.driver.api.core.CqlSession;`{{execute}}
`import com.datastax.oss.driver.api.core.cql.*;`{{execute}}
`import java.net.InetSocketAddress;`{{execute}}
`import import java.nio.file.Paths;`{{execute}}


`CqlSession session = CqlSession.builder().withCloudSecureConnectBundle((Paths.get("/root/creds.zip")).withAuthCredentials("beccam","dontlookback").withKeyspace("demo").build()`{{execute}}
