# MoneyKit::APIErrorRateLimitExceededResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;api_error.rate_limit_exceeded&#39;] |
| **error_message** | **String** | Error message | [optional][default to &#39;Rate limit exceeded&#39;] |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::APIErrorRateLimitExceededResponse.new(
  error_code: null,
  error_message: null,
  documentation_url: null
)
```

