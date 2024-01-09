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
  account_id: acc_6Tef269B6ZArSVpYrxtjBV,
  security_id: sec_bb6fi893jxdfNxyAjnb784,
  quantity: 10,
  price: 98.12,
  price_datetime: 2023-02-16T09:14:11,
  value: 987.15,
  cost_basis: 781.38
)
```

