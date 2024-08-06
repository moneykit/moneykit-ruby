# MoneyKit::TransactionsLinkProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refreshed_at** | **Time** | An ISO-8601 timestamp indicating the last time that the product was updated. | [optional] |
| **last_attempted_at** | **Time** | An ISO-8601 timestamp indicating the last time that the product was attempted. | [optional] |
| **error_code** | [**LinkProductError**](LinkProductError.md) |  | [optional] |
| **error_message** | **String** | The error message, if the last attempt to refresh the product failed. | [optional] |
| **unavailable** | **String** | If this product can&#39;t currently be updated, the reason why it is unavailable.         &lt;p&gt;Unavailable products can&#39;t be refreshed, but past data, if any, is still accessible. | [optional] |
| **settings** | [**TransactionsProductSettings**](TransactionsProductSettings.md) |  | [optional] |
| **has_history** | **Boolean** | DEPRECATED: No longer used as we fetch as much history as possible. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionsLinkProduct.new(
  refreshed_at: 2023-02-16T09:14:11,
  last_attempted_at: 2023-02-16T09:14:11,
  error_code: null,
  error_message: null,
  unavailable: null,
  settings: null,
  has_history: null
)
```

