# MoneyKit::AccountNumbers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ach** | [**Array&lt;AchNumber&gt;**](AchNumber.md) |  |  |
| **bacs** | [**Array&lt;BacsNumber&gt;**](BacsNumber.md) |  |  |
| **eft** | [**Array&lt;EftNumber&gt;**](EftNumber.md) |  |  |
| **international** | [**Array&lt;InternationalNumber&gt;**](InternationalNumber.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AccountNumbers.new(
  ach: null,
  bacs: null,
  eft: null,
  international: null
)
```

