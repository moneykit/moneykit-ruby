# MoneyKit::TransactionCategoryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Transaction category |  |
| **confidence** | **Integer** | Confidence score. Estimated accuracy of this data point (as a percentage). | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionCategoryResponse.new(
  value: food_and_drink,
  confidence: 99
)
```

