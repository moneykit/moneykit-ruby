# MoneyKit::GetUserAccountsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**Hash&lt;String, AccountGroup&gt;**](AccountGroup.md) | The set of all accounts belonging to this user,         as a dictionary of &#x60;{link_id:[accounts]}&#x60;. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::GetUserAccountsResponse.new(
  links: null
)
```

