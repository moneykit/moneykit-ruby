# MoneyKit::AccountImportData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Your internal ID for this account.  Must be unique within the imported account batch. |  |
| **name** | **String** | The account name.  This value may change if synced with a data provider later. |  |
| **nickname** | **String** | The account nickname.  This value may change if synced with a data provider later. | [optional] |
| **type** | **String** | The account type.  It can have any initial value but it will be converted to a MoneyKit         account type (see &lt;a href&#x3D;/pages/account_types&gt;Account Types&lt;/a&gt;) upon output.  The account may change types if it is         synced with a data provider later. |  |
| **mask** | **String** | The last four characters (usually digits) of the account number.  This field can be         omitted, but you are strongly encouraged to supply it because it is the most important factor for properly         connecting new data to this account if it is synced with a data provider later. | [optional] |
| **balances** | [**AccountBalances**](AccountBalances.md) | The balance of funds for this account. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AccountImportData.new(
  account_id: null,
  name: null,
  nickname: null,
  type: null,
  mask: null,
  balances: null
)
```

