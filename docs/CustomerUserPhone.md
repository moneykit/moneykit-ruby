# MoneyKit::CustomerUserPhone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | The user&#39;s phone number, preferably in E164 format, including the country code. |  |
| **country** | [**Country**](Country.md) | Optional two-letter country code, which can be supplied when the phone number does not start             with the E164 numeric country code. | [optional] |
| **customer_verified_at** | **Time** | Optional timestamp that marks when you last verified this number (such as when the user most         recently returned a verification code sent via SMS to this number).         Only include this field if you verified the number.  You may supply zeros if the time (but not the date)         is unknown. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::CustomerUserPhone.new(
  number: null,
  country: null,
  customer_verified_at: null
)
```

