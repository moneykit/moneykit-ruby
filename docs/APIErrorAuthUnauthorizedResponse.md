# MoneyKit::APIErrorAuthUnauthorizedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;api_error.auth.unauthorized&#39;] |
| **error_message** | **String** | Error message |  |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::APIErrorAuthUnauthorizedResponse.new(
  error_code: null,
  error_message: Accounts access not permitted,
  documentation_url: null
)
```

