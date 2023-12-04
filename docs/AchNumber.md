# MoneyKit::AchNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | The account number. |  |
| **routing_number** | **String** | The routing number. |  |
| **wire_routing_number** | **String** | The wire routing number. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AchNumber.new(
  account_number: null,
  routing_number: null,
  wire_routing_number: null
)
```

