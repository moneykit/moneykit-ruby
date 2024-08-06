# MoneyKit::ImportLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_user** | [**CustomerUser**](CustomerUser.md) |  |  |
| **provider** | [**Provider**](Provider.md) |  | [optional] |
| **institution_id** | **String** | MoneyKit&#39;s unique ID for this institution.  If the imported link is         synced with a data provider later, it will be connected to this institution. |  |
| **accounts** | [**Array&lt;AccountImportData&gt;**](AccountImportData.md) |  |  |
| **transactions** | [**Array&lt;TransactionImportData&gt;**](TransactionImportData.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ImportLinkRequest.new(
  customer_user: null,
  provider: null,
  institution_id: chase,
  accounts: null,
  transactions: null
)
```

