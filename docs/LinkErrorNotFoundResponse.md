# MoneyKit::LinkErrorNotFoundResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;link_error.not_found&#39;] |
| **error_message** | **String** |  | [optional][default to &#39;Link not found.&#39;] |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkErrorNotFoundResponse.new(
  error_code: null,
  error_message: null,
  documentation_url: null
)
```

