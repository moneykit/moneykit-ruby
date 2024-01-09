# MoneyKit::GetInvestmentTransactionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of results for this query. |  |
| **page** | **Integer** | The page number corresponding to this batch of results. |  |
| **size** | **Integer** | The number of results in this batch. |  |
| **investment_transactions** | [**Array&lt;InvestmentTransactionResponse&gt;**](InvestmentTransactionResponse.md) |  |  |
| **securities** | [**Array&lt;SecurityResponse&gt;**](SecurityResponse.md) |  |  |
| **accounts** | [**Array&lt;Account&gt;**](Account.md) |  |  |
| **link** | [**LinkCommon**](LinkCommon.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::GetInvestmentTransactionsResponse.new(
  total: 82,
  page: 1,
  size: 50,
  investment_transactions: null,
  securities: null,
  accounts: null,
  link: null
)
```

