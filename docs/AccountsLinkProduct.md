# MoneyKit::AccountsLinkProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refreshed_at** | **Time** | An ISO-8601 timestamp indicating the last time that the product was updated. | [optional] |
| **last_attempted_at** | **Time** | An ISO-8601 timestamp indicating the last time that the product was attempted. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AccountsLinkProduct.new(
  refreshed_at: 2023-02-16T09:14:11,
  last_attempted_at: 2023-02-16T09:14:11
)
```

