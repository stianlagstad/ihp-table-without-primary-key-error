# ihp-table-without-primary-key-error

1. `ihp-new ihp-table-without-primary-key-error`
2. `cd ihp-table-without-primary-key-error`
3. `./start`
4. Open <http://localhost:8001/> and create the table `first`, and keep the `id` column that's added automatically.
5. Create the table `second`, and keep the `id` column for now
6. Create a column `second.first_id` and have it reference `first.id`
7. Remove the `second.id` column and see the error appear in the console:
```
build/Generated/Types.hs:43:87: error:
    Not in scope: type constructor or class ‘Second’
    Perhaps you meant ‘Record’ (imported from IHP.ModelSupport)
   |
43 |         pure $ First id (QueryBuilder.filterWhere (#firstId, id) (QueryBuilder.query @Second)) def
   |                                                                                       ^^^^^^

build/Generated/Types.hs:56:58: error:
    Not in scope: type constructor or class ‘Second’
    Perhaps you meant one of these:
      type variable ‘second’ (line 56),
      ‘Record’ (imported from IHP.ModelSupport)
   |
56 | type instance Include "second" (First' second) = First' [Second]
   |                                                          ^^^^^^
Failed, three modules loaded.
```
