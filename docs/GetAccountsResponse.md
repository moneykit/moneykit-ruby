# MoneyKit::GetAccountsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;AccountResponse&gt;**](AccountResponse.md) | List of accounts. |  |
| **link** | [**LinkCommon**](LinkCommon.md) | Link that the accounts are associated with. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::GetAccountsResponse.new(
  accounts: null,
  link: null
)
```

