# MoneyKit::GetUserTransactionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of results for this query. |  |
| **page** | **Integer** | The page number corresponding to this batch of results. |  |
| **size** | **Integer** | The number of results in this batch. |  |
| **transactions** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) |  |  |
| **accounts** | [**Hash&lt;String, BasicAccountDetails&gt;**](BasicAccountDetails.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::GetUserTransactionsResponse.new(
  total: null,
  page: null,
  size: null,
  transactions: null,
  accounts: null
)
```

