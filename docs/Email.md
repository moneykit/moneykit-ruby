# MoneyKit::Email

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | An email address for the account owner. |  |
| **primary** | **Boolean** | Indicates if this is the primary email address for the account owner, as reported by the institution. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::Email.new(
  address: null,
  primary: null
)
```

