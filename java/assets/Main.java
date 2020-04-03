import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import java.net.InetSocketAddress;

public class GettingStarted {

    public static void main(String[] args) {

        // TO DO: Alter Fill in address, data center
        try (CqlSession session = CqlSession.builder().build()) {

            setUser(session, "Juilus", "Caesar", "juilus@example.com");

            getUser(session, "Caesar");

            updateUser(session, "jc@example.com", "Jones");

            getUser(session, "Caesar");

            deleteUser(session, "Caesar");

        }

    }

    private static void setUser(CqlSession session, String lastname, String firstname, String email) {

        //TO DO: execute SimpleStatement that inserts one user into the table
    }

    private static void getUser(CqlSession session, String lastname) {

        //TO DO: execute SimpleStatement that retrieves one user from the table

        //TO DO: print firstname and email of user
    }


    private static void updateUser(CqlSession session, String email, String lastname) {

        //TO DO: execute SimpleStatement that updates the email of one user
    }

    private static void deleteUser(CqlSession session, String lastname) {

        //TO DO: execute SimpleStatement that deletes one user from the table
    }



}
