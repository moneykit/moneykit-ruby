# MoneyKit::HTTPValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;api_error.request.validation_failed&#39;] |
| **error_message** | **String** | Error message | [optional][default to &#39;Request validation error&#39;] |
| **documentation_url** | **String** |  | [optional] |
| **validation_errors** | [**Array&lt;ValidationError&gt;**](ValidationError.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::HTTPValidationError.new(
  error_code: null,
  error_message: null,
  documentation_url: null,
  validation_errors: null
)
```

