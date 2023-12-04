# MoneyKit::LinkSessionCustomerUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Your own unique ID for this user.  Typically this will be a UUID or primary key         from your application. |  |
| **email** | [**LinkSessionCustomerUserEmail**](LinkSessionCustomerUserEmail.md) |  | [optional] |
| **phone** | [**LinkSessionCustomerUserPhone**](LinkSessionCustomerUserPhone.md) |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkSessionCustomerUser.new(
  id: null,
  email: null,
  phone: null
)
```

