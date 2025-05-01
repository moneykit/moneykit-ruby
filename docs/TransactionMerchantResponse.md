# MoneyKit::TransactionMerchantResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the merchant | [optional] |
| **name** | **String** | Merchant name | [optional] |
| **logo** | **String** | Merchant logo URL | [optional] |
| **confidence** | **Integer** | Confidence score. Estimated accuracy of this data point (as a percentage). | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionMerchantResponse.new(
  id: null,
  name: null,
  logo: null,
  confidence: null
)
```

