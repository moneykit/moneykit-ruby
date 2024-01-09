# MoneyKit::GetHoldingsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **holdings** | [**Array&lt;HoldingResponse&gt;**](HoldingResponse.md) |  |  |
| **securities** | [**Array&lt;SecurityResponse&gt;**](SecurityResponse.md) |  |  |
| **accounts** | [**Array&lt;Account&gt;**](Account.md) |  |  |
| **link** | [**LinkCommon**](LinkCommon.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::GetHoldingsResponse.new(
  holdings: null,
  securities: null,
  accounts: null,
  link: null
)
```

