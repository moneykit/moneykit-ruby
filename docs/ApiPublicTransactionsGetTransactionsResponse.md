# MoneyKit::ApiPublicTransactionsGetTransactionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transactions** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) | A list of transactions. |  |
| **accounts** | [**Array&lt;AccountResponse&gt;**](AccountResponse.md) | A list of accounts for which transactions are being returned. |  |
| **link** | [**LinkCommon**](LinkCommon.md) | The link that these accounts belong to. |  |
| **cursor** | [**CursorPagination**](CursorPagination.md) | Pagination information |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ApiPublicTransactionsGetTransactionsResponse.new(
  transactions: null,
  accounts: null,
  link: null,
  cursor: null
)
```

