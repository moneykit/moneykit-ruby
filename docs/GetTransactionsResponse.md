# MoneyKit::GetTransactionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of results for this query. |  |
| **page** | **Integer** | The page number corresponding to this batch of results. |  |
| **size** | **Integer** | The number of results in this batch. |  |
| **transactions** | [**Array&lt;Transaction&gt;**](Transaction.md) |  |  |
| **accounts** | [**Array&lt;Account&gt;**](Account.md) |  |  |
| **link** | [**LinkCommon**](LinkCommon.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::GetTransactionsResponse.new(
  total: 82,
  page: 1,
  size: 50,
  transactions: null,
  accounts: null,
  link: null
)
```

