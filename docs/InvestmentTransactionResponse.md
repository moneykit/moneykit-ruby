# MoneyKit::InvestmentTransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **investment_transaction_id** | **String** | The unique ID for this investment transaction. |  |
| **account_id** | **String** | The ID of the account in which this investment transaction occurred. |  |
| **amount** | **String** | The total value of this transaction, denominated in account currency.  Positive values indicate         debits (withdrawals); negative values are credits (deposits).  When a transaction has both quantity and price,         the amount should be equal to &#x60;quantity * price + fees&#x60;. |  |
| **date** | **Date** | The effective (posted) date of the transaction, in ISO-8601 format. |  |
| **datetime** | **Time** | If the institution has provided the actual time of the transaction, this field             contains the full date and time of the transaction, in ISO-8601 format.  If the time is             not available, this field will be null.             &lt;p&gt;Note that the time is generally reported in the timezone of the institution or the account holder. | [optional] |
| **description** | **String** | A normalized, cleaned transaction description suitable for presentation to the end user. |  |
| **type** | **String** | The type of transaction (buy, sell, cash, fee, transfer).  May include a dotted subtype,         for example, &#x60;buy.buy_to_cover&#x60; or &#x60;fee.transfer_fee&#x60;. |  |
| **fees** | **String** | The combined value of any fees applied to the transaction.  Fees are reported as positive         values; refunds are reported as negative values. | [optional] |
| **forex_rate** | **String** | The currency exchange rate applied.  Only present for transactions involving a security that is         denominated in a currency other than the account currency. | [optional] |
| **price** | **String** | The price per share, denominated in account currency.  Omitted for transactions not involving         a security. | [optional] |
| **quantity** | **String** | The units of security (aka \&quot;shares\&quot;) bought, sold, or transferred.  Omitted for transactions         not involving a security.  Positive values indicate shares added to the account. | [optional] |
| **security_id** | **String** | The MoneyKit ID of the security involved in this transaction (for example, the security bought         or sold, or upon which interest or dividends are paid. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::InvestmentTransactionResponse.new(
  investment_transaction_id: it_R73abx78zoa2NxyAlki90g,
  account_id: acc_6Tef269B6ZArSVpYrxtjBV,
  amount: 987.15,
  date: 2023-02-16T00:00:00,
  datetime: 2023-02-16T09:14:11,
  description: Bought MSFT,
  type: buy,
  fees: 5.95,
  forex_rate: null,
  price: 98.12,
  quantity: 10,
  security_id: sec_bb6fi893jxdfNxyAjnb784
)
```

