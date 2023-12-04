# MoneyKit::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **city** | **String** | The city of the address. | [optional] |
| **country** | **String** | The country of the address. | [optional] |
| **postal_code** | **String** | The postal or zip code of the address. | [optional] |
| **region** | **String** | The region or state of the address. | [optional] |
| **street** | **String** | The street of the address. | [optional] |
| **primary** | **Boolean** | Indicates if this is the primary address for the account owner. | [optional][default to false] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::Address.new(
  city: null,
  country: null,
  postal_code: null,
  region: null,
  street: null,
  primary: null
)
```

