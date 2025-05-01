# MoneyKit::TransactionSubcategoryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Transaction subcategory |  |
| **confidence** | **Integer** | Confidence score. Estimated accuracy of this data point (as a percentage). | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionSubcategoryResponse.new(
  value: null,
  confidence: null
)
```

