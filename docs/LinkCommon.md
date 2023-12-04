# MoneyKit::LinkCommon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** | The unique ID for this link. |  |
| **institution_id** | **String** | The unique ID for the institution this link is connected to. |  |
| **institution_name** | **String** | The institution name this link is connected to. |  |
| **state** | [**LinkState**](LinkState.md) |  |  |
| **error_code** | [**PublicLinkError**](PublicLinkError.md) |  | [optional] |
| **last_synced_at** | **Time** | An ISO-8601 timestamp indicating the last time that the account was updated. | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **products** | [**LinkProducts**](LinkProducts.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkCommon.new(
  link_id: mk_eqkWN34UEoa2NxyALG8pcV,
  institution_id: chase,
  institution_name: Chase,
  state: null,
  error_code: null,
  last_synced_at: 2023-02-16T09:14:11,
  tags: null,
  products: null
)
```

