# MoneyKit::TransactionUpdatesAvailableWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event** | **String** |  | [optional][default to &#39;transactions.updates_available&#39;] |
| **webhook_major_version** | **Integer** |  | [optional][default to WEBHOOK_MAJOR_VERSION::N1] |
| **webhook_minor_version** | **Integer** |  | [optional][default to WEBHOOK_MINOR_VERSION::N0] |
| **webhook_idempotency_key** | **String** |  |  |
| **webhook_timestamp** | **Time** |  |  |
| **link_id** | **String** |  |  |
| **has_history** | **Boolean** |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionUpdatesAvailableWebhook.new(
  webhook_event: null,
  webhook_major_version: null,
  webhook_minor_version: null,
  webhook_idempotency_key: null,
  webhook_timestamp: null,
  link_id: null,
  has_history: null
)
```

