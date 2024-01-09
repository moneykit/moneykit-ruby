# MoneyKit::LinkProducts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**AccountsLinkProduct**](AccountsLinkProduct.md) |  | [optional] |
| **account_numbers** | [**AccountNumbersLinkProduct**](AccountNumbersLinkProduct.md) |  | [optional] |
| **identity** | [**IdentityLinkProduct**](IdentityLinkProduct.md) |  | [optional] |
| **transactions** | [**TransactionsLinkProduct**](TransactionsLinkProduct.md) |  | [optional] |
| **investments** | [**InvestmentsLinkProduct**](InvestmentsLinkProduct.md) |  | [optional] |

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

