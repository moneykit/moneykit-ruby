# MoneyKit::Institution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **institution_id** | **String** | MoneyKit&#39;s unique ID for this institution. |  |
| **institution_id_aliases** | **Array&lt;String&gt;** |  |  |
| **name** | **String** | The name of the institution. |  |
| **country** | [**Country**](Country.md) |  |  |
| **domain** | **String** | The domain of the institution&#39;s customer-facing website. | [optional] |
| **color** | **String** | The primary color of this institution, represented as hexcode. |  |
| **color_dark** | **String** | The dark-mode primary color of this institution, represented as hexcode. | [optional] |
| **is_featured** | **Boolean** | True for institutions that should be visually promoted to the end-user. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::Institution.new(
  institution_id: chase,
  institution_id_aliases: null,
  name: Chase,
  country: null,
  domain: chase.com,
  color: #0A89FF,
  color_dark: #0A89FF,
  is_featured: null
)
```

