Head into the `cloud-java` directory. This is where our Java project is located.

`cd ~/cloud-java`{{execute}}

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

* Use the `withCloudSecureConnectBundle()` method to specify the path to the secure connect bundle for your Astra database. We have already done this for you.
* Use the `withAuthCredentials()` method to specify the username and password for your database. **YOU WILL NEED TO PROVIDE THIS**
* We use the `withKeyspace()` method to specify the keyspace name for your database. If you have completed previous Astra scenarios, you will already have the `user_management` keyspace and `users` table.

## *Soon our code will be ready to run. Let's first have a look at what this code does.*
