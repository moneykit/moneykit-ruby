# MoneyKit::GetUserLinksResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**Hash&lt;String, LinkCommon&gt;**](LinkCommon.md) | The set of links belonging to this user, as a dictionary         of &#x60;{link_id:link}&#x60;. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::GetUserLinksResponse.new(
  links: null
)
```

