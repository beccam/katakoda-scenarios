# Collection Data Types: Map

The `map` data type contains a collection of key-value pairs. The keys and the values can be of any type except counter. Let's try this out by using a `map` to store information about user logins. Create a column to track login session time, in seconds, with a `timeuuid` as the key:

`ALTER TABLE user ADD
  login_sessions map<timeuuid, int>;`{{execute}}

Then you can add a couple of login sessions for Mary: 

`UPDATE user SET login_sessions =
  { now(): 13, now(): 18}
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}
  
See the results:

`SELECT login_sessions FROM user
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

We can also reference an individual item in the map by using its key.

