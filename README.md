### Carrierwave-Mongoid test app

This application serves to demonstrate the following bug:

When updating an attachment to a document the old (stale) attachment stays in
the storage.

Steps:

- We upload an attachemnt to a mongoid document (regardless the storage).
- We save the model.
- We upload a new attachment to the same document.

## Test

In order to run the failing test

`be rake test`
