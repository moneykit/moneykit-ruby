# MoneyKit::AccountBalances

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | A three-character currency code (ISO-4217 or similar, *e.g.*, &#x60;USD&#x60;, &#x60;CAD&#x60;) for the account balances. | [optional] |
| **available** | **Float** | The amount of funds available for use.  Not all institutions report the available balance.             &lt;p&gt;Note that the available balance typically does not include overdraft limits. | [optional] |
| **current** | **Float** | The total amount of funds in the account.             &lt;p&gt;For credit or loan accounts, a positive number indicates the amount owed by the account holder.             If the balance is negative (this is rare), this indicates an amount owed **to** the account holder.             &lt;p&gt;For depository or investment accounts, a positive number is the asset value of the account.             If the balance is negative (this is rare), this indicates an overdraft or margin condition. | [optional] |
| **limit** | **Float** | The credit limit on the account.  Typically this exists only for credit-type accounts.             &lt;p&gt;In some cases, this may represent the overdraft limit for depository accounts. | [optional] |
| **balance_date** | **Time** | The date that the balance was captured at.  This may not include a time. When this field is null, the balance was captured at an unknown time. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::AccountBalances.new(
  currency: null,
  available: null,
  current: null,
  limit: null,
  balance_date: null
)
```

