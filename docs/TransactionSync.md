# MoneyKit::TransactionSync

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) |  |  |
| **updated** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) |  |  |
| **removed** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionSync.new(
  created: null,
  updated: null,
  removed: null
)
```

