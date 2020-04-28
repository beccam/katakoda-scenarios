
Head into the `cloud-java` directory

`cd cloud-java`{{execute}}

Before we can run any code against our Astra database, we will need to provide our credentials, username, and password when creating the `CqlSession`

Open Main.java
`cloud-java/src/main/java/Main.java`{{open}}

Observe the place in the code where we build the `CqlSession`

```
CqlSession session = CqlSession.builder()
           .withCloudSecureConnectBundle(Paths.get("/root/creds.zip"))
           .withAuthCredentials("username","password")
           .build())
```           

Use the `withCloudSecureConnectBundle()` method to specify the path to the secure connect bundle for your Astra database.
Use the `withAuthCredentials()` method to specify the username and password for your database.
Use the `withKeyspace()` method to specify the keyspace name for your database
