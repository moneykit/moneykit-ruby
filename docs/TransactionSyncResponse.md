# MoneyKit::TransactionSyncResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transactions** | [**TransactionDiff**](TransactionDiff.md) |  |  |
| **cursor** | [**CursorPagination**](CursorPagination.md) |  |  |
| **has_more** | **Boolean** | This condition indicates the presence of transaction updates exceeding the requested count.         If true, additional updates can be retrieved by making an additional request with cursor set to next_cursor. |  |
| **link** | [**LinkCommon**](LinkCommon.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionSyncResponse.new(
  transactions: null,
  cursor: null,
  has_more: null,
  link: null
)
```

