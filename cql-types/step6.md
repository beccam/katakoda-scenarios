# Collection Data Types: Set

Let's say you wanted to extend the `user` table to support multiple email addresses. One way to do this would be to create additional columns such as `email2`, `email3`, and so on. While this approach will work, it does not scale very well and might cause a lot of rework. It is much simpler to deal with the email addresses as a group or "collection". CQL provides three collection types to help you with these situations: sets, lists, and maps. Let's now take a look at each of them, starting with `set`.

The `set` data type stores a collection of elements. The elements are unordered when stored, but are returned in sorted order. For example, text values are returned in alphabetical order. Sets can contain the simple types you've learned above, as well as user-defined types (which we'll discuss soon) and even other collections. One advantage of using `set` is the ability to insert additional items without having to read the contents first.

You can modify the `user` table to add a set of email addresses:

`ALTER TABLE user ADD emails set<text>;`{{execute}}

Then add an email address for Mary: 

`UPDATE user SET emails = { 'mary@example.com' } 
WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

Check that it was added successfully:

`SELECT emails FROM user WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

Note that in adding that first email address, you replaced the previous contents of the set, which in this case was `null`. You can add another email address later without replacing the whole set by using concatenation:

`UPDATE user
  SET emails = emails + {'mary.rodriguez.AZ@gmail.com' }
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}
  
Check the update:

`SELECT emails FROM user
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

You can also clear items from the set by using the subtraction operator: 

`UPDATE user
  SET emails = emails - {'mary@example.com'}
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

Alternatively, you could clear out the entire set by using the empty set notation:
 
`UPDATE user
  SET emails = {}
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

