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
  id: a0822a4f-a59b-4fc9-a768-d880da5bd090,
  name: Square,
  logo: https://example.com/square.png,
  confidence: 99
)
```

