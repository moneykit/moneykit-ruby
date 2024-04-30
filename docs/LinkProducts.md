# MoneyKit::LinkProducts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**LinkProduct**](LinkProduct.md) |  | [optional] |
| **account_numbers** | [**LinkProduct**](LinkProduct.md) |  | [optional] |
| **identity** | [**LinkProduct**](LinkProduct.md) |  | [optional] |
| **transactions** | [**TransactionsLinkProduct**](TransactionsLinkProduct.md) |  | [optional] |
| **investments** | [**LinkProduct**](LinkProduct.md) |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkProducts.new(
  accounts: null,
  account_numbers: null,
  identity: null,
  transactions: null,
  investments: null
)
```

