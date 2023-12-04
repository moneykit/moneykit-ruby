# MoneyKit::IntrospectClientResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Your application&#39;s MoneyKit client ID. |  |
| **client_name** | **String** | Friendly API client name for identification. |  |
| **scope** | **String** | Actions allowed by the client. |  |
| **app** | [**CustomerApp**](CustomerApp.md) |  |  |
| **disabled_at** | **Time** | Set to timestamp if the client has been disabled. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::IntrospectClientResponse.new(
  client_id: live_5c739a369515e10fc9e0,
  client_name: My App (Prod),
  scope: null,
  app: null,
  disabled_at: null
)
```

