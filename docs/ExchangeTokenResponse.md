# MoneyKit::ExchangeTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** | DEPRECATED: Please use &#x60;link.link_id&#x60; for this value |  |
| **link** | [**LinkCommon**](LinkCommon.md) | Details of the new link. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ExchangeTokenResponse.new(
  link_id: null,
  link: null
)
```

