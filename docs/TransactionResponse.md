# MoneyKit::TransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | The unique ID for this transaction. |  |
| **account_id** | **String** | The ID of the account in which this transaction occurred. |  |
| **amount** | **String** | The amount of this transaction, denominated in account currency.  This amount is always         non-negative.  The &#x60;type&#x60; field indicates whether it is entering or leaving the account. |  |
| **type** | [**TransactionType**](TransactionType.md) |  |  |
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
  transaction_id: c7318ff7-257c-490e-8242-03a815b223b7,
  account_id: acc_6Tef269B6ZArSVpYrxtjBV,
  amount: 384.05,
  type: null,
  currency: USD,
  date: 2023-02-16T00:00:00,
  datetime: 2023-02-16T09:14:11,
  description: Regina&#39;s Mulberry,
  raw_description: Regina&#39;s Mulberry #1402 T48999-84,
  pending: null,
  category: null,
  enrichment: null,
  original_id: null
)
```

