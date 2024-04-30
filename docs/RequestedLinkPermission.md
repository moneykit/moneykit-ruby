# MoneyKit::RequestedLinkPermission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | [**Product**](Product.md) |  |  |
| **reason** | **String** | A **brief** description of the reason your app wants this data.         This description will follow the words \&quot;...data is used to\&quot;, and will be displayed         to the user when permission is requested. |  |
| **required** | **Boolean** | If true, only institutions that support this data type will be available,         and the user **must** grant this permission or the link will not be created.  If false, then the available         institutions list may include those that do not support this data type, and even if the user declines to         grant this permission, the link will still be created (so long as at least one permission is granted). |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::RequestedLinkPermission.new(
  scope: null,
  reason: display your account balances,
  required: null
)
```

