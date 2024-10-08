# MoneyKit::AccountWithAccountNumbersLegacy20230218

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | MoneyKit&#39;s unique ID for the account.         &lt;p&gt;The &#x60;account_id&#x60; is distinct from the institution&#39;s account number.  For accounts that may change account         numbers from time to time, such as credit cards, MoneyKit attempts to keep the &#x60;account_id&#x60; constant.         However, if MoneyKit can&#39;t reconcile the new account data with the old data, the &#x60;account_id&#x60; may change. |  |
| **account_type** | **String** | See &lt;a href&#x3D;/pages/account_types&gt;Account Types&lt;/a&gt; for an explanation of account types.  Account types are         dot-prefixed with one of &#x60;depository&#x60;, &#x60;investment&#x60;, &#x60;liability&#x60;, or &#x60;other&#x60;; or the value is &#x60;unknown&#x60;.         &lt;p&gt;**Balances for &#x60;liability&#x60; accounts are reversed:**  negative balances (the amount owed) are reported as         positive values.  For all other types of accounts, a negative balance indicates the amount owed. |  |
| **name** | **String** | The account name, according to the institution.  Note that some institutions allow         the end user to nickname the account; in such cases this field may be the name assigned by the user. |  |
| **account_mask** | **String** | The last four characters (usually digits) of the account number.         Note that this mask may be non-unique between accounts. | [optional] |
| **balances** | [**AccountBalances**](AccountBalances.md) |  |  |
| **raw_provider_data** | **Object** | Raw account data from the provider. | [optional] |
| **original_id** | **String** | The original ID of this account, if supplied (by you) during an import. | [optional] |
| **closed** | **Boolean** | True if this account is closed. | [optional] |
| **numbers** | [**AccountNumbersLegacy20230218**](AccountNumbersLegacy20230218.md) |  |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AccountWithAccountNumbersLegacy20230218.new(
  account_id: acc_6Tef269B6ZArSVpYrxtjBV,
  account_type: depository.checking,
  name: Premier Checking,
  account_mask: 3748,
  balances: null,
  raw_provider_data: null,
  original_id: null,
  closed: null,
  numbers: null
)
```

