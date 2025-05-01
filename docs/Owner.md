# MoneyKit::Owner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **names** | **Array&lt;String&gt;** | A list of names for the account owner. |  |
| **addresses** | [**Array&lt;Address&gt;**](Address.md) | A list of addresses for the account owner.         &lt;p&gt;MoneyKit does not (yet) perform address verification or normalization on this data, so it may contain         inaccurate or partial address information, and it may not appear be in a country-specific canonical format. |  |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) | A list of phone numbers for the account owner. |  |
| **emails** | [**Array&lt;Email&gt;**](Email.md) | A list of email addresses for the account owner. |  |

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

