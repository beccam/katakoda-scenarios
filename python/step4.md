The `session.execute()` method returns a `ResultSet` with objects of type `Row`. 
Each row is Python's `namedtuple` with a matching attribute for each column defined in the schema, 
such as `video_id` and `title`. You can also treat rows as normal tuples by unpacking them 
or accessing fields by position.

Check out the following examples:

```
rs = session.execute("SELECT video_id, title FROM videos_by_tag WHERE tag = 'cassandra'")
print(rs.column_names)
print(rs.column_types)
for row in rs:
    print (row.video_id, row.title)

print("Well done!")    
```{{execute}}

```
for row in session.execute("SELECT video_id, title FROM videos_by_tag WHERE tag = 'CQL'"):
    print (row[0], row[1])

print("Well done!")    
```{{execute}}