# MoneyKit::AccountGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;AccountResponse&gt;**](AccountResponse.md) |  |  |
| **last_synced_at** | **Time** | An ISO-8601 timestamp indicating the last time that the account was updated. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AccountGroup.new(
  accounts: null,
  last_synced_at: null
)
```

