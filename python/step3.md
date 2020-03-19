Use method `session.execute()` to execute CQL query `SELECT * FROM videos_by_tag`.
Output resulting rows using Python's `print()` function:

<details>
  <summary>Solution</summary>
```
for row in session.execute("SELECT * FROM videos_by_tag"):
    print(row)

print("Well done!")
```{{execute}}
</details>
