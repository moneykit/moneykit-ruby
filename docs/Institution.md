# MoneyKit::Institution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **institution_id** | **String** | MoneyKit&#39;s unique ID for this institution. |  |
| **institution_id_aliases** | **Array&lt;String&gt;** | Alternative institution IDs that point to this institution that can be used for lookup. |  |
| **name** | **String** | The name of the institution. |  |
| **country** | [**Country**](Country.md) | The two-letter country code for this institution.  Note that British institutions are             designated GB (not UK).  Possible values are: &#x60;US, GB, CA&#x60;. |  |
| **domain** | **String** | The domain of the institution&#39;s user-facing website. | [optional] |
| **color** | **String** | The primary color of this institution, represented as hexcode. | [optional] |
| **color_dark** | **String** | The dark-mode primary color of this institution, represented as hexcode. | [optional] |
| **is_featured** | **Boolean** | True for institutions that should be visually promoted to the end-user. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::Institution.new(
  institution_id: null,
  institution_id_aliases: null,
  name: null,
  country: null,
  domain: null,
  color: null,
  color_dark: null,
  is_featured: null
)
```

