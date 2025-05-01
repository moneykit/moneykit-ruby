# MoneyKit::UpdateLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook** | **String** | Sets the webhook URL for this link.         To remove a webhook for this link, set to &#x60;null&#x60;. | [optional] |
| **link_tags** | **Array&lt;String&gt;** | Arbitrary strings used to describe this link. Tags must be under 100 characters in length, and begin with an alphanumeric character. | [optional] |
| **tags** | **Array&lt;String&gt;** | DEPRECATED; please use &#x60;link_tags&#x60; instead. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::UpdateLinkRequest.new(
  webhook: null,
  link_tags: null,
  tags: null
)
```

