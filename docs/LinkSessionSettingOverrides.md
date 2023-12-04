# MoneyKit::LinkSessionSettingOverrides

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **providers** | [**Array&lt;Provider&gt;**](Provider.md) |  | [optional] |
| **link_permissions** | [**LinkPermissions**](LinkPermissions.md) |  | [optional] |
| **products** | [**ProductsSettings**](ProductsSettings.md) |  | [optional] |
| **countries** | [**Array&lt;Country&gt;**](Country.md) |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkSessionSettingOverrides.new(
  providers: null,
  link_permissions: null,
  products: null,
  countries: null
)
```

