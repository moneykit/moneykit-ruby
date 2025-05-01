# MoneyKit::GetInstitutionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **institutions** | [**Array&lt;Institution&gt;**](Institution.md) | The list of institutions for this page. |  |
| **cursors** | [**CursorPagination**](CursorPagination.md) | Pagination information. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::GetInstitutionsResponse.new(
  institutions: null,
  cursors: null
)
```

