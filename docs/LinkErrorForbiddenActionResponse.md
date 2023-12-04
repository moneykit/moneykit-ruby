# MoneyKit::LinkErrorForbiddenActionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;link_error.forbidden_action&#39;] |
| **error_message** | **String** | Error message |  |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkErrorForbiddenActionResponse.new(
  error_code: null,
  error_message: Accounts access not permitted,
  documentation_url: null
)
```

