Confirm that your row is no longer in the table:

```
rs = session.execute("""
    SELECT video_id, title 
    FROM videos_by_tag 
    WHERE tag = 'CQL' AND
          added_date = '2020-03-18' AND
          video_id = 40e70800-2c3b-11b2-8080-808080808080
""")
print(rs.one())
```{{execute}}
