# MoneyKit::AppClientResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The client&#39;s client ID. |  |
| **client_name** | **String** | Friendly client name for identification. |  |
| **scope** | **String** | Actions allowed by this client. |  |
| **app** | [**AppResponse**](AppResponse.md) |  |  |
| **disabled_at** | **Time** | Set to timestamp if the client has been disabled. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AppClientResponse.new(
  client_id: live_5c739a369515e10fc9e0,
  client_name: My App (Prod),
  scope: null,
  app: null,
  disabled_at: null
)
```

