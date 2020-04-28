Head into the `cloud-java` directory. This is where our Java project is located.

`cd cloud-java`{{execute}}

Open Main.java in the editor:
`cloud-java/src/main/java/Main.java`{{open}}

Before we can run any code against our Astra database, we will need to provide our credentials, username, and password when creating the `CqlSession`

Observe the place in the code where we build the `CqlSession`

```
CqlSession session = CqlSession.builder()
             .withCloudSecureConnectBundle(Paths.get("/root/creds.zip"))
             .withAuthCredentials("username","password")
             .withKeyspace("user_management")
             .build())
```           

Use the `withCloudSecureConnectBundle()` method to specify the path to the secure connect bundle for your Astra database. We have already done this for you.
Use the `withAuthCredentials()` method to specify the username and password for your database. *You will need to provide this*
We use the `withKeyspace()` method to specify the keyspace name for your database. If you have completed previous Astra scenarios, you will already have the `user_management` keyspace and `users` table.

If you don't have the keyspace or table, head over to your cloud console and set it up:
```
CREATE KEYSPACE user_management WITH replication = {'class': 'NetworkTopologyStrategy', 'caas-dc': '1'}  AND durable_writes = true;

CREATE TABLE user_management.users (
    last_name text,
    first_name text,
    email text,
    address text,
    PRIMARY KEY (last_name, first_name, email)
) WITH CLUSTERING ORDER BY (first_name ASC, email ASC);
```

## Soon our code will be ready to run. Let's first have a look at what this code does.
