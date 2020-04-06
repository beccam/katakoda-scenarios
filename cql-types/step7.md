# Collection Data Types: List

The `list` data type contains an ordered list of elements. By default, the values are stored in order of insertion. You can modify the `user` table to add a list of phone numbers:

`ALTER TABLE user ADD phone_numbers list<text>;`{{execute}}

Then add a phone number for Mary: 

`UPDATE user SET phone_numbers = ['1-800-999-9999' ]
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}
  
Check that it was added successfully:

`SELECT phone_numbers FROM user WHERE
  first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

Let's add a second number by appending it:

`UPDATE user SET phone_numbers =
  phone_numbers + [ '480-111-1111' ]
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

Results:
  
`SELECT phone_numbers FROM user WHERE
  first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

The second number you added now appears at the end of the list.

You could also have prepended the number to the front of the list by reversing the order of the values: `SET phone_numbers = [‘4801234567'] + phone_numbers`.

You can replace an individual item in the list when you reference it by its index:

`UPDATE user SET phone_numbers[1] = '480-111-1111'
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

As with sets, you can also use the subtraction operator to remove items that match a specified value:

`UPDATE user SET phone_numbers =
  phone_numbers - [ '480-111-1111' ]
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

Finally, you can delete a specific item directly using its index:

`DELETE phone_numbers[0] from user WHERE
  first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

Because a `list` stores values according to position, there is the potential that updating or deleting a specific item could require Cassandra to read the entire contents, perform the requested operation, and write out the entire contents again. This could be an expensive operation if you have a large number of values . For this reason, many users prefer to use the `set` or `map` types, especially in cases where there is the potential to update the contents of the collection.
