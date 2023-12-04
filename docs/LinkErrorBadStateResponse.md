# MoneyKit::LinkErrorBadStateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;link_error.bad_state&#39;] |
| **error_message** | **String** |  |  |
| **documentation_url** | **String** |  | [optional] |
| **link_error_code** | **String** |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkErrorBadStateResponse.new(
  error_code: null,
  error_message: null,
  documentation_url: null,
  link_error_code: null
)
```

