# MoneyKit::TransactionRecurrenceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **frequency** | **String** | Frequency of the recurring transaction | [optional] |
| **next_predicted_date** | **Date** | Predicted date of next transaction | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionRecurrenceResponse.new(
  frequency: null,
  next_predicted_date: null
)
```

