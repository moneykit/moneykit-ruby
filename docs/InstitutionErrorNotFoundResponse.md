# MoneyKit::InstitutionErrorNotFoundResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional][default to &#39;institution_error.not_found&#39;] |
| **error_message** | **String** |  | [optional][default to &#39;Institution not found&#39;] |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::InstitutionErrorNotFoundResponse.new(
  error_code: null,
  error_message: null,
  documentation_url: null
)
```

