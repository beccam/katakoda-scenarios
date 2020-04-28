
```
wget https://downloads.datastax.com/enterprise/cqlsh-astra.tar.gz
tar xvzf cqlsh-astra.tar.gz
```{{execute}}

Let's add cqlsh to our path.

`export PATH=$PATH:/root/cqlsh-astra/bin`{{execute}}

`curl -L "<paste link here>" > creds.zip`




`cd quickstart; mvn compile`{{execute}}

`mvn com.github.johnpoth:jshell-maven-plugin:1.3:run`{{execute}}

`import com.datastax.oss.driver.api.core.CqlSession;`{{execute}}
`import com.datastax.oss.driver.api.core.cql.*;`{{execute}}
`import java.net.InetSocketAddress;`{{execute}}



```
CqlSession session = CqlSession.builder().withCloudSecureConnectBundle("/root/creds.zip").withAuthCredentials("beccam","dontlookback").withKeyspace("demo").build());`{{execute}}
```{{execute}}   
