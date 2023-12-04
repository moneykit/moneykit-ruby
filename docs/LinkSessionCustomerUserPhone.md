# MoneyKit::LinkSessionCustomerUserPhone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | The user&#39;s phone number, preferably in E164 format, including the country code. |  |
| **country** | [**Country**](Country.md) |  | [optional] |
| **customer_verified_at** | **Time** | Optional timestamp that marks when you last verified this number (such as when the user most         recently returned a verification code sent via SMS to this number).         Only include this field if you verified the number.  You may supply zeros if the time (but not the date)         is unknown. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkSessionCustomerUserPhone.new(
  number: +16175551212,
  country: null,
  customer_verified_at: 2023-02-16T00:00:00
)
```

