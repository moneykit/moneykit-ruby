# MoneyKit::GetInvestmentTransactionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | The total number of results for this query. |  |
| **page** | **Integer** | The page number corresponding to this batch of results. |  |
| **size** | **Integer** | The number of results in this batch. |  |
| **investment_transactions** | [**Array&lt;InvestmentTransactionResponse&gt;**](InvestmentTransactionResponse.md) | A list of investment transactions. |  |
| **securities** | [**Array&lt;SecurityResponse&gt;**](SecurityResponse.md) | A list of securities involved in these transactions. |  |
| **accounts** | [**Array&lt;AccountResponse&gt;**](AccountResponse.md) | A list of accounts for which transactions are being returned. |  |
| **link** | [**LinkCommon**](LinkCommon.md) | The link that these accounts belong to. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::GetInvestmentTransactionsResponse.new(
  total: null,
  page: null,
  size: null,
  investment_transactions: null,
  securities: null,
  accounts: null,
  link: null
)
```

