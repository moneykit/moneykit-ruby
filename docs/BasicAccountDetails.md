# MoneyKit::BasicAccountDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The account name, according to the institution.  Note that some institutions allow         the end user to nickname the account; in such cases this field may be the name assigned by the user |  |
| **last_synced_at** | **Time** | An ISO-8601 timestamp indicating the last time that the account was updated. | [optional] |
| **institution_id** | **String** |  |  |
| **link_id** | **String** | The unique ID of the link this account belongs to. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::BasicAccountDetails.new(
  name: Premier Checking,
  last_synced_at: 2023-02-16T09:14:11,
  institution_id: null,
  link_id: null
)
```

