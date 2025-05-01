# MoneyKit::AppClientResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The client&#39;s client ID. |  |
| **client_name** | **String** | (deprecated) Friendly client name for identification. |  |
| **scope** | **String** | Actions allowed by this client. |  |
| **app** | [**AppResponse**](AppResponse.md) | The app to which the this client belongs. |  |
| **disabled_at** | **Time** | When the client was (or will be) disabled. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AppClientResponse.new(
  client_id: null,
  client_name: null,
  scope: null,
  app: null,
  disabled_at: null
)
```

