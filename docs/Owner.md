# MoneyKit::Owner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **names** | **Array&lt;String&gt;** |  |  |
| **addresses** | [**Array&lt;Address&gt;**](Address.md) |  |  |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  |  |
| **emails** | [**Array&lt;Email&gt;**](Email.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::Owner.new(
  names: null,
  addresses: null,
  phone_numbers: null,
  emails: null
)
```

