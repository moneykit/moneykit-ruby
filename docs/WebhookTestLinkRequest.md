# MoneyKit::WebhookTestLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_event** | [**WebhookLinkTestEvent**](WebhookLinkTestEvent.md) |  |  |
| **webhook_idempotency_key** | **String** | Set this to a unique value that you can check against the delivered webhook payload (&#x60;webhook_idempotency_key&#x60;). |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::WebhookTestLinkRequest.new(
  webhook_event: null,
  webhook_idempotency_key: null
)
```

