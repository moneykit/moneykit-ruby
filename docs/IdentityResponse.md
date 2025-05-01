# MoneyKit::IdentityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;AccountIdentity&gt;**](AccountIdentity.md) | A list of accounts associated with the link. |  |
| **link** | [**LinkCommon**](LinkCommon.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::IdentityResponse.new(
  accounts: null,
  link: null
)
```

