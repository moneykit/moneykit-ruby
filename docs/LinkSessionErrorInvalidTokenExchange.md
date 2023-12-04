# MoneyKit::LinkSessionErrorInvalidTokenExchange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;link_session_error.invalid_token_exchange&#39;] |
| **error_message** | **String** | Error message |  |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkSessionErrorInvalidTokenExchange.new(
  error_code: null,
  error_message: Invalid token for link,
  documentation_url: null
)
```

