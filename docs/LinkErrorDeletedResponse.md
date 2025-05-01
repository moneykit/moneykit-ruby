# MoneyKit::LinkErrorDeletedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;link_error.deleted&#39;] |
| **error_message** | **String** |  | [optional][default to &#39;This link was deleted at some earlier time.&#39;] |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkErrorDeletedResponse.new(
  error_code: null,
  error_message: null,
  documentation_url: null
)
```

