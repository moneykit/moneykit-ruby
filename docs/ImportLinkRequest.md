# MoneyKit::ImportLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_user** | [**CustomerUser**](CustomerUser.md) |  |  |
| **provider** | [**Provider**](Provider.md) |  | [optional] |
| **institution_id** | **String** | MoneyKit&#39;s unique ID for this institution.  If you use a MoneyKit-supported provider, you can         also submit the provider name and __their__ institution_id in dotted notation, such as &#x60;mx.chase&#x60;         or &#x60;yodlee.30188&#x60;.  If the imported link is synced with a data provider later, it will be connected to         this institution.  Note that MoneyKit may reconnect the link using any supported provider, not just the one         given during this import. |  |
| **accounts** | [**Array&lt;AccountImportData&gt;**](AccountImportData.md) |  |  |
| **transactions** | [**Array&lt;TransactionImportData&gt;**](TransactionImportData.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ImportLinkRequest.new(
  customer_user: null,
  provider: null,
  institution_id: null,
  accounts: null,
  transactions: null
)
```

