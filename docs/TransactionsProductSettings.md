# MoneyKit::TransactionsProductSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **required** | **Boolean** | If true, only institutions supporting this product will be available. | [optional][default to false] |
| **require_permission** | **Boolean** | This flag matters only if &#x60;required&#x60; is false.  For non-required products,         the product permission is normally presented to the user as optional (granted by default, but the user may         opt out).  If this flag is true, however, the product permission will be presented in the UI as non-optional:         the user&#39;s only choice is to grant the permission or to cancel the link.         &lt;p&gt;         Note that this field is ignored if &#x60;required&#x60; is true.  Permission is always mandatory for required products. | [optional][default to false] |
| **prefetch** | **Boolean** | If true, the data will be available as soon as possible after linking, even if &#x60;required&#x60; is false. If false, the data will be available after the first manual data refresh. | [optional][default to false] |
| **reason** | **String** | A **brief** description of the reason your app wants this data.         This description will follow the words \&quot;...data is used to\&quot;, and will be displayed         to the user when permission is requested.  You should provide this field if your         app does not request this product by default, or if you want to show a particular         reason for requesting the product during this link session. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionsProductSettings.new(
  required: null,
  require_permission: null,
  prefetch: null,
  reason: display your account balances
)
```

