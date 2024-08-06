# MoneyKit::LinkProducts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**LinkProductResponse**](LinkProductResponse.md) |  | [optional] |
| **account_numbers** | [**LinkProductResponse**](LinkProductResponse.md) |  | [optional] |
| **identity** | [**LinkProductResponse**](LinkProductResponse.md) |  | [optional] |
| **transactions** | [**TransactionsLinkProduct**](TransactionsLinkProduct.md) |  | [optional] |
| **investments** | [**LinkProductResponse**](LinkProductResponse.md) |  | [optional] |
| **enrichment** | [**LinkProductResponse**](LinkProductResponse.md) |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkProducts.new(
  accounts: null,
  account_numbers: null,
  identity: null,
  transactions: null,
  investments: null,
  enrichment: null
)
```

