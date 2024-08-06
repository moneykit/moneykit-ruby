# MoneyKit::CustomerUserEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The user&#39;s email address. |  |
| **customer_verified_at** | **Time** | Optional timestamp that marks when you last verified this email (such as when the user most         recently clicked a verification url sent to this address).         Only include this field if you verified the address.  You may supply zeros if the time (but not the date)         is unknown. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::CustomerUserEmail.new(
  address: null,
  customer_verified_at: 2023-02-16T00:00:00
)
```

