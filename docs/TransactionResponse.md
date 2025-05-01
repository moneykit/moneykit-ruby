# MoneyKit::TransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | The unique ID for this transaction. |  |
| **account_id** | **String** | The ID of the account in which this transaction occurred. |  |
| **amount** | **String** | The amount of this transaction, denominated in account currency.  This amount is always         non-negative.  The &#x60;type&#x60; field indicates whether it is entering (type&#x3D;&#x60;credit&#x60;) or leaving (type&#x3D;&#x60;debit&#x60;)         the account. |  |
| **type** | [**TransactionType**](TransactionType.md) | A &#x60;debit&#x60; indicates money leaving the account (*e.g.*, a payment); a &#x60;credit&#x60; indicates             money entering the account (*e.g.*, a deposit).  The account type does not affect transaction type;             transaction types indicate the same direction for all account types.  (The account type does, however,             change the way balances are reported; see             &lt;a href&#x3D;\&quot;/api/operation/get_account#account-account_type\&quot;&gt;account response&lt;/a&gt; for details.) |  |
| **currency** | **String** | The ISO-4217 currency code of the transaction. |  |
| **date** | **Date** | The effective (posted) date of the transaction, in ISO-8601 format.  For pending transactions,             this date is when the transaction was initiated. |  |
| **datetime** | **Time** | If the institution has provided the actual time of the transaction, this field             contains the full date and time of the transaction, in ISO-8601 format.  If the time is             not available, this field will be null.             &lt;p&gt;Note that the time is generally reported in the timezone of the institution or the account holder. | [optional] |
| **description** | **String** | A normalized, cleaned transaction description suitable for presentation to the end user.             Commonly this will be the merchant or counterparty name. | [optional] |
| **raw_description** | **String** | The raw transaction description as provided by the institution, where available. | [optional] |
| **pending** | **Boolean** | If true, this transaction is pending or unsettled and has not yet affected the account.         Commonly these are credit card transactions, particularly approvals (holds) such as for hotel or restaurant         reservations placed in advance where the final amount is still to be determined. |  |
| **category** | **String** | (deprecated) Refer to enrichment.category. | [optional] |
| **enrichment** | [**TransactionEnrichmentResponse**](TransactionEnrichmentResponse.md) |  | [optional] |
| **original_id** | **String** | The original ID of this transaction, if supplied (by you) during an import. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionResponse.new(
  transaction_id: null,
  account_id: null,
  amount: null,
  type: null,
  currency: null,
  date: null,
  datetime: null,
  description: null,
  raw_description: null,
  pending: null,
  category: null,
  enrichment: null,
  original_id: null
)
```

