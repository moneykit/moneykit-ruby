# MoneyKit::APIErrorAuthExpiredAccessTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;api_error.auth.expired_access_token&#39;] |
| **error_message** | **String** | Error message | [optional][default to &#39;Access token expired&#39;] |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::APIErrorAuthExpiredAccessTokenResponse.new(
  error_code: null,
  error_message: null,
  documentation_url: null
)
```

