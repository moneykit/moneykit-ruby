# MoneyKit::GetLinksResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**Array&lt;GetLinksLink&gt;**](GetLinksLink.md) |  | [optional] |
| **next_cursor** | **String** |  | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::GetLinksResponse.new(
  links: null,
  next_cursor: null
)
```

