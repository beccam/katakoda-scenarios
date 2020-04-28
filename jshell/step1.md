
```
wget https://downloads.datastax.com/enterprise/cqlsh-astra.tar.gz
tar xvzf cqlsh-astra.tar.gz
```{{execute}}

Let's add cqlsh to our path.

`export PATH=$PATH:/root/cqlsh-astra/bin`{{execute}}

curl -L "<paste link here>" > creds.zip


`mvn com.github.johnpoth:jshell-maven-plugin:1.3:run`

```
{
import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import java.net.InetSocketAddress;
}
```

```
{
CqlSession session = CqlSession.builder()
  .withCloudSecureConnectBundle("/path/to/secure-connect-database_name.zip")
  .withAuthCredentials("username","password")
  .withKeyspace("keyspace_name")
  .build())
 }   
```{{execute}}   


