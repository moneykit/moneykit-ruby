# MoneyKit::InvestmentsProductSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **required** | **Boolean** | If true, only institutions supporting this product will be available. | [optional][default to false] |
| **prefetch** | **Boolean** | If true, the data will be available as soon as possible after linking, even if &#x60;required&#x60; is false. If false, the data will be available after the first manual data refresh. | [optional][default to false] |
| **product** | [**Product**](Product.md) |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::InvestmentsProductSettings.new(
  required: null,
  prefetch: null,
  product: null
)
```

