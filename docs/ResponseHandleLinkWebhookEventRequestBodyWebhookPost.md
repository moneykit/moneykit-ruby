# MoneyKit::ResponseHandleLinkWebhookEventRequestBodyWebhookPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_major_version** | **Object** |  | [optional] |
| **webhook_minor_version** | **Object** |  | [optional] |
| **webhook_idempotency_key** | **Object** |  |  |
| **webhook_timestamp** | **Object** |  |  |
| **link_id** | **Object** |  |  |
| **link_tags** | **Object** |  |  |
| **webhook_event** | **Object** |  | [optional] |
| **state** | [**LinkProductState**](LinkProductState.md) |  |  |
| **error** | [**PublicLinkError**](PublicLinkError.md) |  | [optional] |
| **error_message** | **Object** |  | [optional] |
| **product** | [**Product**](Product.md) |  |  |
| **state_changed_at** | **Object** |  |  |
| **has_history** | **Object** |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ResponseHandleLinkWebhookEventRequestBodyWebhookPost.new(
  webhook_major_version: null,
  webhook_minor_version: null,
  webhook_idempotency_key: null,
  webhook_timestamp: null,
  link_id: null,
  link_tags: null,
  webhook_event: null,
  state: null,
  error: null,
  error_message: null,
  product: null,
  state_changed_at: null,
  has_history: null
)
```

