# MoneyKit::AccountGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;Account&gt;**](Account.md) |  |  |
| **last_synced_at** | **Time** | An ISO-8601 timestamp indicating the last time that the account was updated. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AccountGroup.new(
  accounts: null,
  last_synced_at: 2023-02-16T09:14:11
)
```

