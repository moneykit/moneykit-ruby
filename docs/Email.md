# MoneyKit::Email

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | An email address for the account owner. |  |
| **primary** | **Boolean** | Indicates if this is the primary email address for the account owner. | [optional][default to false] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::Email.new(
  address: example@example.com,
  primary: null
)
```

