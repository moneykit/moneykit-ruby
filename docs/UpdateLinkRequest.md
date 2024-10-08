# MoneyKit::UpdateLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook** | **String** | Sets the webhook URL for this link.         To remove a webhook for this link, set to &#x60;null&#x60;. | [optional] |
| **link_tags** | **Array&lt;String&gt;** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::UpdateLinkRequest.new(
  webhook: https://example.com/updated/hook,
  link_tags: null,
  tags: null
)
```

