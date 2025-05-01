# MoneyKit::TransactionSyncResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transactions** | [**TransactionSync**](TransactionSync.md) | Created, updated, and removed transactions.  These lists are **unordered**. |  |
| **accounts** | [**Array&lt;AccountResponse&gt;**](AccountResponse.md) | A list of accounts for which transactions are being returned. |  |
| **cursor** | [**CursorPagination**](CursorPagination.md) | Pagination information |  |
| **has_more** | **Boolean** | This condition indicates the presence of transaction updates exceeding the requested count.         If true, additional updates MUST be retrieved by making an additional request with cursor set to &#x60;cursor.next&#x60;.          |  |
| **link** | [**LinkCommon**](LinkCommon.md) | The link that these transactions belong to. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionSyncResponse.new(
  transactions: null,
  accounts: null,
  cursor: null,
  has_more: null,
  link: null
)
```

