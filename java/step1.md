Before we start executing any queries against a Cassandra, we need to setup an instance of `CqlSession`. This has already been done for you. `CqlSession` is the main entry point of the driver. It holds the known state of the actual Cassandra cluster, and is what you use to execute queries.

```java
try (CqlSession session = CqlSession.builder()
        .withKeyspace("demo")
        .build()) {
```          
`CqlSession.builder()` provides a fluent API to create an instance programmatically.
