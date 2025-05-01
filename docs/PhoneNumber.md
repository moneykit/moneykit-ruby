# MoneyKit::PhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | A phone number for the account owner.  Phone numbers may have a variety of formats; they may or         may not have country-code prefixes; and they may contain extensions. |  |
| **primary** | **Boolean** | Indicates if this is the primary phone number for the account owner, as reported by the institution. | [optional] |
| **type** | [**PhoneNumberType**](PhoneNumberType.md) | The type of phone. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::PhoneNumber.new(
  number: null,
  primary: null,
  type: null
)
```

