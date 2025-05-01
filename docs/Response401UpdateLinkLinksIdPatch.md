# MoneyKit::Response401UpdateLinkLinksIdPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;link_error.unauthorized_access&#39;] |
| **error_message** | **String** |  | [default to &#39;Unauthorized link access.&#39;] |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::Response401UpdateLinkLinksIdPatch.new(
  error_code: null,
  error_message: null,
  documentation_url: null
)
```

