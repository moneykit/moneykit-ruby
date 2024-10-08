# MoneyKit::MoneyKitConnectFeatures

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_reporter** | **Boolean** | If enabled, the user can report linking issues directly to MoneyKit via &#39;Report Issue&#39; button. | [optional][default to false] |
| **enable_money_id** | **Boolean** | If enabled, the user can register for, or login into, Money ID. | [optional][default to false] |
| **duplicate_institution_warning** | **Boolean** | If enabled, the user will see a warning when trying to connect the same institution more than once. | [optional][default to false] |
| **connect_manually** | **Boolean** | If enabled, the user can click a button in the MoneyKit Connect SDK to connect manually if the institution they are looking for doesn&#39;t exist in our catalog. | [optional][default to false] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::MoneyKitConnectFeatures.new(
  issue_reporter: null,
  enable_money_id: null,
  duplicate_institution_warning: null,
  connect_manually: null
)
```

