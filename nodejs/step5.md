Say our user has a birthday. We create the `updateUser` function to update the user's age. Within the empty `updateUser` method, `execute()` an `UPDATE` statement that allows us to do just that.

```js
const update = 'UPDATE users SET age = ? WHERE lastname = ?';
return client.execute(update, [ age, lastname ], { prepare : true })
```{{copy}}

Call the `updateUser` function, and the `selectUser` created earlier from `async function example()` to see the change in the user's age.

```js
await updateUser(36, 'Jones');
const rs2 = await selectUser('Jones');
const user2 = rs2.first();
if (user2) {
console.log("name = %s, age = %d", user2.firstname, user2.age);
} else {
console.log("No results");
}
```{{copy}}

launch with `node quickstart.js`{{execute}}
