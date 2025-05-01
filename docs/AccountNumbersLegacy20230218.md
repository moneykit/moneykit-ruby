# MoneyKit::AccountNumbersLegacy20230218

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ach** | [**Array&lt;AchNumber&gt;**](AchNumber.md) | The ACH account and routing numbers. |  |
| **eft** | [**Array&lt;EftNumber&gt;**](EftNumber.md) | The EFT transfer numbers. |  |
| **bacs** | [**Array&lt;BacsNumber&gt;**](BacsNumber.md) | The BACS account number and sort code. |  |
| **international** | [**Array&lt;InternationalNumber&gt;**](InternationalNumber.md) | Internationally recognized transfer numbers. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AccountNumbersLegacy20230218.new(
  ach: null,
  eft: null,
  bacs: null,
  international: null
)
```

