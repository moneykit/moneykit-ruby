# MoneyKit::GetHoldingsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **holdings** | [**Array&lt;HoldingResponse&gt;**](HoldingResponse.md) | The holdings belonging to investment accounts for this link. |  |
| **securities** | [**Array&lt;SecurityResponse&gt;**](SecurityResponse.md) | The set of securities for these holdings. |  |
| **accounts** | [**Array&lt;AccountResponse&gt;**](AccountResponse.md) | The set of accounts for which holdings are returned. |  |
| **link** | [**LinkCommon**](LinkCommon.md) | The link that these accounts belong to. |  |

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

