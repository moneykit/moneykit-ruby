# MoneyKit::MoneyKitConnectFeatures

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_reporter** | **Boolean** | If enabled, the user can report linking issues directly to MoneyKit. | [optional][default to false] |
| **enable_money_id** | **Boolean** | If enabled, the user can register for, or login into, Money ID. | [optional][default to false] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::MoneyKitConnectFeatures.new(
  issue_reporter: null,
  enable_money_id: null
)
```

