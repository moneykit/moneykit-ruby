# MoneyKit::TransactionSync

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) | A list of transactions that have been added to the link. |  |
| **updated** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) | A list of transactions that have been updated on the link. |  |
| **removed** | **Array&lt;String&gt;** | A list of transaction ids that have been removed from the link. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionSync.new(
  created: null,
  updated: null,
  removed: null
)
```

