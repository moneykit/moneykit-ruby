# MoneyKit::MoneyKitConnectFeatures

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_reporter** | **Boolean** | If enabled, the user can report linking issues directly to MoneyKit via &#39;Report Issue&#39; button. | [optional][default to false] |
| **enable_money_id** | **Boolean** | If enabled, the user can register for, or login into, Money ID. | [optional][default to false] |
| **duplicate_institution_warning** | **Boolean** | If enabled, the user will see a warning when trying to connect to an institution for which             they already have a connected link. | [optional][default to false] |
| **duplicate_institution_rejected** | **Boolean** | If enabled, all institutions for which the user has a connected link will be hidden, so the user             will be unable to make another link to an institution to which they are already linked. | [optional][default to false] |
| **connect_manually** | **Boolean** | If enabled, the user can click a button in the MoneyKit Connect SDK to connect manually if the institution they are looking for doesn&#39;t exist in our catalog. | [optional][default to false] |
| **permit_only_one_account** | **Boolean** | If enabled, the user is allowed to grant permission only for one account. | [optional][default to false] |
| **permit_only_depository_accounts** | **Boolean** | If enabled, the user is allowed to grant permission only for depository accounts.             If there are no depository accounts, the linking process will fail. | [optional][default to false] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::MoneyKitConnectFeatures.new(
  issue_reporter: null,
  enable_money_id: null,
  duplicate_institution_warning: null,
  duplicate_institution_rejected: null,
  connect_manually: null,
  permit_only_one_account: null,
  permit_only_depository_accounts: null
)
```

