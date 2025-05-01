# MoneyKit::LinkSessionErrorForbiddenConfigResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;link_session_error.forbidden_config&#39;] |
| **error_message** | **String** | Error message |  |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkSessionErrorForbiddenConfigResponse.new(
  error_code: null,
  error_message: null,
  documentation_url: null
)
```

