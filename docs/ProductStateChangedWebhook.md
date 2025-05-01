# MoneyKit::ProductStateChangedWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_major_version** | **Integer** |  | [optional][default to WEBHOOK_MAJOR_VERSION::N1] |
| **webhook_minor_version** | **Integer** |  | [optional][default to WEBHOOK_MINOR_VERSION::N0] |
| **webhook_idempotency_key** | **String** |  |  |
| **webhook_timestamp** | **Time** |  |  |
| **link_id** | **String** |  |  |
| **link_tags** | **Array&lt;String&gt;** |  |  |
| **webhook_event** | **String** |  | [optional][default to &#39;link.product_refresh&#39;] |
| **product** | [**Product**](Product.md) |  |  |
| **state** | [**LinkProductState**](LinkProductState.md) |  |  |
| **state_changed_at** | **Time** |  |  |
| **error_message** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ProductStateChangedWebhook.new(
  webhook_major_version: null,
  webhook_minor_version: null,
  webhook_idempotency_key: null,
  webhook_timestamp: null,
  link_id: null,
  link_tags: null,
  webhook_event: null,
  product: null,
  state: null,
  state_changed_at: null,
  error_message: null
)
```

