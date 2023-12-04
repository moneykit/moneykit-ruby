# MoneyKit::ProductsSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_numbers** | [**AccountNumbersProductSettings**](AccountNumbersProductSettings.md) |  | [optional] |
| **identity** | [**IdentityProductSettings**](IdentityProductSettings.md) |  | [optional] |
| **transactions** | [**TransactionsProductSettings**](TransactionsProductSettings.md) |  | [optional] |
| **investments** | [**InvestmentsProductSettings**](InvestmentsProductSettings.md) |  | [optional] |

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

