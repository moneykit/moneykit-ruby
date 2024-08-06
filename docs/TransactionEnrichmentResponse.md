# MoneyKit::TransactionEnrichmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | [**TransactionCategoryResponse**](TransactionCategoryResponse.md) |  |  |
| **subcategory** | [**TransactionSubcategoryResponse**](TransactionSubcategoryResponse.md) |  | [optional] |
| **merchant** | [**TransactionMerchantResponse**](TransactionMerchantResponse.md) |  | [optional] |
| **processor** | [**TransactionProcessorResponse**](TransactionProcessorResponse.md) |  | [optional] |
| **recurrence** | [**TransactionRecurrenceResponse**](TransactionRecurrenceResponse.md) |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionEnrichmentResponse.new(
  category: null,
  subcategory: null,
  merchant: null,
  processor: null,
  recurrence: null
)
```

