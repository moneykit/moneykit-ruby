# MoneyKit::ValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | [**Array&lt;ValidationErrorLocationInner&gt;**](ValidationErrorLocationInner.md) |  |  |
| **message** | **String** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::ValidationError.new(
  location: null,
  message: null,
  type: null
)
```

