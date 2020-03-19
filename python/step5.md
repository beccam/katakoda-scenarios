Using `session.execute()`, insert a new row into table **videos_by_tag** with the following values: 

| video_id | added_date | title |
| --- | --- | --- |
| 40e70800-2c3b-11b2-8080-808080808080 | 2020-03-18 | CQL vs SQL |

<details>
  <summary>Solution</summary>

```
session.execute("""
    INSERT INTO videos_by_tag (tag, added_date, video_id, title)
    VALUES ('CQL', '2020-03-18', 40e70800-2c3b-11b2-8080-808080808080, 'CQL vs SQL')
""")
```{{execute}}
</details>
