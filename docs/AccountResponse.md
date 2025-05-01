# MoneyKit::AccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | MoneyKit&#39;s unique ID for the account.         &lt;p&gt;The &#x60;account_id&#x60; is distinct from the institution&#39;s account number.  For accounts that may change account         numbers from time to time, such as credit cards, MoneyKit attempts to keep the &#x60;account_id&#x60; constant.         However, if MoneyKit can&#39;t reconcile the new account data with the old data, the &#x60;account_id&#x60; may change. |  |
| **account_type** | **String** | See &lt;a href&#x3D;/pages/account_types&gt;Account Types&lt;/a&gt; for an explanation of account types.  Account types are         dot-prefixed with one of &#x60;depository&#x60;, &#x60;investment&#x60;, &#x60;liability&#x60;, or &#x60;other&#x60;; or the value is &#x60;unknown&#x60;.         &lt;p&gt;**Balances for &#x60;liability&#x60; accounts are reversed:**  negative balances (the amount owed) are reported as         positive values.  For all other types of accounts, a negative balance indicates the amount owed. |  |
| **name** | **String** | The account name, according to the institution. |  |
| **nickname** | **String** | The account nickname, if available. | [optional] |
| **account_mask** | **String** | The last four characters (usually digits) of the account number.         Note that this mask may be non-unique between accounts. | [optional] |
| **balances** | [**AccountBalances**](AccountBalances.md) | The balance of funds for this account. Note that balances are typically cached and may lag         behind actual values at the institution. To update balances, please use the &lt;a href&#x3D;#operation/refresh_products&gt;/products&lt;/a&gt; endpoint.         &lt;p&gt;Some accounts, particularly investment accounts, may show balances that are temporarily inconsistent         around the time of a trade or transfer.  These discrepancies occur because of a delay between the time a         trade or transfer is initiated and the time the institution reflects its effect on the account balance,         and will disappear over time, typically within 1-2 business days.          |  |
| **original_id** | **String** | The original ID of this account, if supplied (by you) during an import. | [optional] |
| **closed** | **Boolean** | True if this account is closed. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AccountResponse.new(
  account_id: null,
  account_type: null,
  name: null,
  nickname: null,
  account_mask: null,
  balances: null,
  original_id: null,
  closed: null
)
```

