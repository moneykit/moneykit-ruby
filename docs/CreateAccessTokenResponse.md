# MoneyKit::CreateAccessTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | Short-lived access token. |  |
| **token_type** | **String** | Always \&quot;bearer\&quot;. |  |
| **expires_in** | **Integer** | How long until &#x60;access_token&#x60; expires in seconds. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::CreateAccessTokenResponse.new(
  access_token: null,
  token_type: null,
  expires_in: null
)
```

