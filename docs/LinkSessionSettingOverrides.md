# MoneyKit::LinkSessionSettingOverrides

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **providers** | [**Array&lt;Provider&gt;**](Provider.md) | If provided, restricts the available institutions to those supported             by **any** of these providers. | [optional] |
| **products** | [**ProductsSettings**](ProductsSettings.md) | If provided, configures what institutions are available and how data should be fetched. | [optional] |
| **countries** | [**Array&lt;Country&gt;**](Country.md) | Restricts the available institutions to those in **any** of these countries.  If more than         one country is listed, the institution panel shown to the user will be prioritied by the order given. If         omitted, your app&#39;s primary country is used (the default is US). | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkSessionSettingOverrides.new(
  providers: null,
  products: null,
  countries: null
)
```

