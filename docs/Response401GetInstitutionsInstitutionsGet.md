# MoneyKit::Response401GetInstitutionsInstitutionsGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **Object** |  | [optional] |
| **error_message** | **Object** | Error message |  |
| **documentation_url** | **Object** |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::Response401GetInstitutionsInstitutionsGet.new(
  error_code: null,
  error_message: Accounts access not permitted,
  documentation_url: null
)
```

