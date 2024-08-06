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
  id: a0822a4f-a59b-4fc9-a768-d880da5bd090,
  name: Starbucks,
  logo: https://example.com/starbucks.png,
  confidence: 99
)
```

