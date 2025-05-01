# MoneyKit::ApiPublicTransactionsLegacyGetTransactionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of results for this query. |  |
| **page** | **Integer** | The page number corresponding to this batch of results. |  |
| **size** | **Integer** | The number of results in this batch. |  |
| **transactions** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) | A list of transactions. |  |
| **accounts** | [**Array&lt;AccountResponse&gt;**](AccountResponse.md) | A list of accounts for which transactions are being returned. |  |
| **link** | [**LinkCommon**](LinkCommon.md) | The link that these accounts belong to. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ApiPublicTransactionsLegacyGetTransactionsResponse.new(
  total: null,
  page: null,
  size: null,
  transactions: null,
  accounts: null,
  link: null
)
```

