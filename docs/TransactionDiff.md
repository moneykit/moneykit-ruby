# MoneyKit::TransactionDiff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | [**Array&lt;Transaction&gt;**](Transaction.md) |  |  |
| **updated** | [**Array&lt;Transaction&gt;**](Transaction.md) |  |  |
| **removed** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionDiff.new(
  created: null,
  updated: null,
  removed: null
)
```

