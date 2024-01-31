# MoneyKit::TransactionsLinkProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refreshed_at** | **Time** | An ISO-8601 timestamp indicating the last time that the product was updated. | [optional] |
| **last_attempted_at** | **Time** | An ISO-8601 timestamp indicating the last time that the product was attempted. | [optional] |
| **error_code** | [**LinkProductFailureReasons**](LinkProductFailureReasons.md) |  | [optional] |
| **error_message** | **String** | The error message, if the last attempt to refresh the product failed. | [optional] |
| **has_history** | **Boolean** |  |  |
| **settings** | [**TransactionsProductSettings**](TransactionsProductSettings.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionsLinkProduct.new(
  refreshed_at: 2023-02-16T09:14:11,
  last_attempted_at: 2023-02-16T09:14:11,
  error_code: null,
  error_message: null,
  has_history: null,
  settings: null
)
```

