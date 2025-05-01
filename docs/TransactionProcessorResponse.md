# MoneyKit::TransactionProcessorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the processor | [optional] |
| **name** | **String** | Processor name | [optional] |
| **logo** | **String** | Processor logo URL | [optional] |
| **confidence** | **Integer** | Confidence score. Estimated accuracy of this data point (as a percentage). | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionProcessorResponse.new(
  id: null,
  name: null,
  logo: null,
  confidence: null
)
```

