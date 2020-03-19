Using `session.execute()`, we will retrieve our user we just inserted back out of the table. Since there is only one user in the database with lastname "Jones", we can use the `one()` method to return a single row of the results. 

```
result = session.execute("""
    SELECT * FROM demo.users WHERE lastname = %s
    """,
    ("Jones").one()
``` {{execute}}
    
Then we will print out the name and age of our user.    

`print (result.firstname), (result.age)`{{execute}}

    
    


