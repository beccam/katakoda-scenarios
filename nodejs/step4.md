Next, will we fill in the `selectUser` function. Using the `execute()` method, we will retrieve our user we just inserted back out of the table. 
```js
const select = 'SELECT firstname, age FROM users WHERE lastname = ?';
const params = [ lastname ] ;
return client.execute(select, params);          
```{{copy}}  

Finally, we can call the `getUser` function in our `async function example()`.Add code that will print out the `firstname` and `age` of the user.We use the `first()` method to extract the first row (which is the only one in this case); since there is only one user in the database with lastname "Jones".

```js
const rs1 = await selectUser('Jones');
  const user1 = rs1.first();
  if (user1) {
    console.log("name = %s, age = %d", user1.firstname, user1.age);
  } else {
    console.log("No results");
  }
```{{copy}}

