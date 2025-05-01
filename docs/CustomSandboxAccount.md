# MoneyKit::CustomSandboxAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** | Account type applied to the sandbox account. See &lt;a href&#x3D;/pages/account_types&gt;Account Types&lt;/a&gt; for a full listing. |  |
| **name** | **String** | Account name used for the sandbox account. |  |
| **account_number** | **String** | Account number used for the sandbox account. |  |
| **routing_number** | **String** | Routing number used for the sandbox account (if applicable). Must follow the standard ABA routing transit number format with a valid check digit, but does not need to be a real bank&#39;s routing number. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::CustomSandboxAccount.new(
  account_type: null,
  name: null,
  account_number: null,
  routing_number: null
)
```

