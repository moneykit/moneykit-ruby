# MoneyKit::PhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | A phone number for the account owner. |  |
| **primary** | **Boolean** | Indicates if this is the primary phone number for the account owner. | [optional][default to false] |
| **type** | [**PhoneNumberType**](PhoneNumberType.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::PhoneNumber.new(
  number: +16175551212,
  primary: null,
  type: null
)
```

