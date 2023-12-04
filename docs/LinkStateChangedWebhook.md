# MoneyKit::LinkStateChangedWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event** | **String** |  | [optional][default to &#39;link.state_changed&#39;] |
| **webhook_major_version** | **Integer** |  | [optional][default to WEBHOOK_MAJOR_VERSION::N1] |
| **webhook_minor_version** | **Integer** |  | [optional][default to WEBHOOK_MINOR_VERSION::N0] |
| **webhook_idempotency_key** | **String** |  |  |
| **webhook_timestamp** | **Time** |  |  |
| **link_id** | **String** |  |  |
| **link_tags** | **Array&lt;String&gt;** |  |  |
| **state** | [**LinkState**](LinkState.md) |  |  |
| **error** | [**PublicLinkError**](PublicLinkError.md) |  | [optional] |
| **error_message** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkStateChangedWebhook.new(
  webhook_event: null,
  webhook_major_version: null,
  webhook_minor_version: null,
  webhook_idempotency_key: null,
  webhook_timestamp: null,
  link_id: null,
  link_tags: null,
  state: null,
  error: null,
  error_message: null
)
```

