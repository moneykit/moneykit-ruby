# MoneyKit::CustomerUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Your own unique ID for this user.  Typically this will be a UUID or primary key         from your application. |  |
| **email** | [**CustomerUserEmail**](CustomerUserEmail.md) |  | [optional] |
| **phone** | [**CustomerUserPhone**](CustomerUserPhone.md) |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::CustomerUser.new(
  id: null,
  email: null,
  phone: null
)
```

