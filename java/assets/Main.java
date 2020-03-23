import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import java.net.InetSocketAddress;

public class Main {
    public static void main(String[] args) {
        try (CqlSession session = CqlSession.builder()
                .withKeyspace("demo")
                .build()) {

            //Call setUser method

            //Call getUser method

            //Call updateUser method

            //Call getUser method

            //Call deleteUser method

        }
    }

    private static void setUser(CqlSession session, String lastname, int age, String city, String email, String firstname) {

      //TO DO: execute SimpleStatement that inserts one user into the table

    }

    private static void getUser(CqlSession session, String lastname) {

      //TO DO: execute SimpleStatement that retrieves one user from the table
      //TO DO: print firstname and age of user

    }

    private static void updateUser(CqlSession session, int age, String lastname) {

        //TO DO: execute SimpleStatement that updates the age of one user

    }

    private static void deleteUser(CqlSession session, String lastname) {

        //TO DO: execute SimpleStatement that deletes one user from the table

    }



}
