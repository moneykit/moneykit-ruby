# MoneyKit::TransactionSyncResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transactions** | [**TransactionSync**](TransactionSync.md) |  |  |
| **accounts** | [**Array&lt;AccountResponse&gt;**](AccountResponse.md) |  |  |
| **cursor** | [**CursorPagination**](CursorPagination.md) |  |  |
| **has_more** | **Boolean** | This condition indicates the presence of transaction updates exceeding the requested count.         If true, additional updates MUST be retrieved by making an additional request with cursor set to &#x60;cursor.next&#x60;.          |  |
| **link** | [**LinkCommon**](LinkCommon.md) |  |  |

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

