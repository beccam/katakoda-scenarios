Open the `Main.java` file. Before we start executing any queries against a Cassandra, we need to setup an instance of `CqlSession`. This has already been done for you. `CqlSession` is the main entry point of the driver. It holds the known state of the actual Cassandra cluster, and is what you use to execute queries.

<pre class="file" data-filename="quickstart/src/main/java/Main.js" data-target="replace">
import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import java.net.InetSocketAddress;

public class GettingStarted {

    public static void main(String[] args) {

        // TO DO: Fill in your own host, port, and data center
        try (CqlSession session = CqlSession.builder()
                .addContactPoint(new InetSocketAddress("127.0.0.1", 9042))
                .withKeyspace("demo")
                .withLocalDatacenter("datacenter1")
                .build()) {

            setUser(session, "Jones", 35, "Austin", "bob@example.com", "Bob");

            getUser(session, "Jones");

            updateUser(session, 36, "Jones");

            getUser(session, "Jones");

            deleteUser(session, "Jones");

        }
    }

</pre>
