# MoneyKit::CustomerUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Your own unique ID for this user.  Typically this will be a UUID or primary key         from your application. |  |
| **email** | [**CustomerUserEmail**](CustomerUserEmail.md) | The user&#39;s email address.  This field is optional, but either email or phone must be provided         to enable improved link conversion. | [optional] |
| **phone** | [**CustomerUserPhone**](CustomerUserPhone.md) | The user&#39;s mobile phone number.  This field is optional, but either email or phone must be         provided to enable improved link conversion. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::CustomerUser.new(
  id: null,
  email: null,
  phone: null
)
```

