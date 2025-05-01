# MoneyKit::ImportLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_user** | [**CustomerUser**](CustomerUser.md) |  |  |
| **provider** | [**Provider**](Provider.md) | The name of the provider from which this data came.  The name is helpful, but not         required, and can be omitted, particularly if the source is unknown or can&#39;t be attributed to one of         MoneyKit&#39;s providers. | [optional] |
| **institution_id** | **String** | MoneyKit&#39;s unique ID for this institution.  If you use a MoneyKit-supported provider, you can         also submit the provider name and __their__ institution_id in dotted notation, such as &#x60;mx.chase&#x60;         or &#x60;yodlee.30188&#x60;.  If the imported link is synced with a data provider later, it will be connected to         this institution.  Note that MoneyKit may reconnect the link using any supported provider, not just the one         given during this import. |  |
| **accounts** | [**Array&lt;AccountImportData&gt;**](AccountImportData.md) | The accounts to import.  Note that these fields are initial values only.  After import,         the actual values may be normalized and cleaned to fit the MoneyKit schema.  Also, values may be updated         if the account is synced with a provider later. |  |
| **transactions** | [**Array&lt;TransactionImportData&gt;**](TransactionImportData.md) | The transactions to import. |  |

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

