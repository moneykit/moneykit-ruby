# MoneyKit::TransactionsProductSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **required** | **Boolean** | If true, only institutions supporting this product will be available. | [optional][default to false] |
| **prefetch** | **Boolean** | If true, the data will be available as soon as possible after linking, even if &#x60;required&#x60; is false. If false, the data will be available after the first manual data refresh. | [optional][default to false] |
| **product** | [**Product**](Product.md) |  | [optional] |
| **extend_history** | **Boolean** | If true, MoneyKit will attempt to fetch as much transaction history as possible. Not all institutions supply the same extent of transaction history. Generally, however, at least the past 30 days of transactions are available. | [optional][default to false] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionsProductSettings.new(
  required: null,
  prefetch: null,
  product: null,
  extend_history: null
)
```

