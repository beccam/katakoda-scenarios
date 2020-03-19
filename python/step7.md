Delete the row that you inserted previously.

<details>
  <summary>Solution</summary>

```
session.execute("""
    DELETE
    FROM videos_by_tag 
    WHERE tag = 'CQL' AND
          added_date = '2020-03-18' AND
          video_id = 40e70800-2c3b-11b2-8080-808080808080
""")
```{{execute}}
</details>
