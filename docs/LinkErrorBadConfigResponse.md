# MoneyKit::LinkErrorBadConfigResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;link_error.bad_config&#39;] |
| **error_message** | **String** |  |  |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkErrorBadConfigResponse.new(
  error_code: null,
  error_message: null,
  documentation_url: null
)
```

