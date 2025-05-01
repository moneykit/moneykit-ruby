# MoneyKit::CustomSandboxData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;CustomSandboxAccount&gt;**](CustomSandboxAccount.md) | An array of static accounts to be returned from Sandbox via &#x60;user_custom&#x60;. |  |
| **owners** | [**Array&lt;Owner&gt;**](Owner.md) | An array of owners to attach to the identity response of every account on &#x60;user_custom&#x60;. Owners will otherwise be randomly generated. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::CustomSandboxData.new(
  accounts: null,
  owners: null
)
```

