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
    .addContactPoint(new InetSocketAddress("127.0.0.1", 9042))
    .withKeyspace("demo")
    .withLocalDatacenter("datacenter1")
    .build() 
 }   
```{{execute}}   
