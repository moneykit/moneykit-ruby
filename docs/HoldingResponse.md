# MoneyKit::HoldingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The MoneyKit ID of the account for this holding. |  |
| **security_id** | **String** | The MoneyKit ID of the security for this holding. |  |
| **quantity** | **String** | The units of this security (aka \&quot;shares\&quot;) held. |  |
| **price** | **String** | The per-share price of this holding, as reported by the institution, denominated in account currency. | [optional] |
| **price_datetime** | **Time** | The timestamp for which the institution-reported price is valid. | [optional] |
| **value** | **String** | The value of this holding, as reported by the institution, denominated in account currency. | [optional] |
| **cost_basis** | **String** | The total purchase cost of the holding, as reported by the institution, denominated in account currency. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::HoldingResponse.new(
  account_id: null,
  security_id: null,
  quantity: null,
  price: null,
  price_datetime: null,
  value: null,
  cost_basis: null
)
```

