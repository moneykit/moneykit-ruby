# MoneyKit::ExchangeTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchangeable_token** | **String** | The token returned to your front end by Connect&#39;s onSuccess callback. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ExchangeTokenRequest.new(
  exchangeable_token: c7318ff7-257c-490e-8242-03a815b223b7
)
```

