# MoneyKit::TransactionImportData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Your internal ID for the account this transaction belongs to.  The &#x60;account_id&#x60; **must** match         one of the IDs provided in the &#x60;accounts&#x60; list. |  |
| **transaction_id** | **String** | Your internal ID for this transaction.  If supplied, this ID will be returned as the         &#x60;original_id&#x60; of the transaction in future requests. | [optional] |
| **amount** | **String** | The amount of this transaction, denominated in account currency.  Use positive numbers         for credits (deposits), and negative numbers of debits (withdrawals). |  |
| **date** | **Date** |  |  |
| **description** | **String** | A description of this transaction. | [optional] |
| **type** | **String** | A type or category for this transaction.  Does not need to match MoneyKit types,         but see &lt;a href&#x3D;/pages/categories&gt;Transaction Categories&lt;/a&gt; if you want to match our current schema. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::TransactionImportData.new(
  account_id: 74583934,
  transaction_id: null,
  amount: 384.05,
  date: null,
  description: Regina&#39;s Mulberry,
  type: food_and_drinks.restaurants
)
```

