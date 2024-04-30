# MoneyKit::ProductsSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_numbers** | [**ProductSettings**](ProductSettings.md) |  | [optional] |
| **identity** | [**ProductSettings**](ProductSettings.md) |  | [optional] |
| **transactions** | [**TransactionsProductSettings**](TransactionsProductSettings.md) |  | [optional] |
| **investments** | [**ProductSettings**](ProductSettings.md) |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ProductsSettings.new(
  account_numbers: null,
  identity: null,
  transactions: null,
  investments: null
)
```

