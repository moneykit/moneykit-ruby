# MoneyKit::ResponseHandleLinkWebhookEventRequestBodyWebhookPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event** | **Object** |  | [optional] |
| **webhook_major_version** | **Object** |  | [optional] |
| **webhook_minor_version** | **Object** |  | [optional] |
| **webhook_idempotency_key** | **Object** |  |  |
| **webhook_timestamp** | **Object** |  |  |
| **link_id** | **Object** |  |  |
| **link_tags** | **Object** |  |  |
| **state** | [**LinkProductState**](LinkProductState.md) |  |  |
| **error** | [**LinkError**](LinkError.md) |  | [optional] |
| **error_message** | **Object** |  | [optional] |
| **product** | [**Product**](Product.md) |  |  |
| **state_changed_at** | **Object** |  |  |
| **has_history** | **Object** |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ResponseHandleLinkWebhookEventRequestBodyWebhookPost.new(
  webhook_event: null,
  webhook_major_version: null,
  webhook_minor_version: null,
  webhook_idempotency_key: null,
  webhook_timestamp: null,
  link_id: null,
  link_tags: null,
  state: null,
  error: null,
  error_message: null,
  product: null,
  state_changed_at: null,
  has_history: null
)
```

