# MoneyKit::LinkProductResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refreshed_at** | **Time** | An ISO-8601 timestamp indicating the last time that the product was updated. | [optional] |
| **last_attempted_at** | **Time** | An ISO-8601 timestamp indicating the last time that the product was attempted. | [optional] |
| **error_code** | [**LinkProductError**](LinkProductError.md) | The type of error, if the last attempt to refresh the product failed. | [optional] |
| **error_message** | **String** | The error message, if the last attempt to refresh the product failed. | [optional] |
| **unavailable** | **String** | If this product can&#39;t currently be updated, the reason why it is unavailable.         &lt;p&gt;Unavailable products can&#39;t be refreshed, but past data, if any, is still accessible. | [optional] |
| **settings** | [**ProductSettings**](ProductSettings.md) | DEPRECATED:  The settings given when this product was created.  This field is deprecated and will be removed. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkProductResponse.new(
  refreshed_at: null,
  last_attempted_at: null,
  error_code: null,
  error_message: null,
  unavailable: null,
  settings: null
)
```

