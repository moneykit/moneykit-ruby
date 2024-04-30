# MoneyKit::SecurityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_id** | **String** | A unique MoneyKit ID for this security. |  |
| **name** | **String** | A user-facing name for this security. |  |
| **type** | **String** | The type of this security.  Will be one of: &lt;p&gt;&#x60;cash&#x60;: Cash, currency, and money market funds &lt;p&gt;&#x60;crypto&#x60;: Digital or virtual currencies &lt;p&gt;&#x60;derivative&#x60;: Options, warrants, and other derivative instruments &lt;p&gt;&#x60;equity&#x60;: Equities (stocks) &lt;p&gt;&#x60;etf&#x60;: Exchange-traded investment funds &lt;p&gt;&#x60;bond&#x60;: Bonds and certificates of deposit (CDs) &lt;p&gt;&#x60;loan&#x60;: Loans and loan receivables &lt;p&gt;&#x60;fund&#x60;: Open- and closed-end vehicles pooling funds of multiple investors &lt;p&gt;&#x60;unknown&#x60;: Indicates the type is unknown or does not fit into any other category |  |
| **currency** | **String** | The ISO-4217 code for the currency in which this security is priced. |  |
| **ticker** | **String** | The security&#39;s public trading symbol, if available. | [optional] |
| **isin** | **String** | The ISO 6166 globally unique ID for this security, if available. | [optional] |
| **sedol** | **String** | The security&#39;s SEDOL ID from the London Stock Exchange, if available. | [optional] |
| **close_price** | **String** | The price of the security at the close of the previous trading session, given in pricing currency. | [optional] |
| **close_date** | **Date** | The date for which &#x60;close_price&#x60; is given. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::SecurityResponse.new(
  security_id: sec_bb6fi893jxdfNxyAjnb784,
  name: Microsoft,
  type: equity,
  currency: USD,
  ticker: MSFT,
  isin: US5949181045,
  sedol: null,
  close_price: 98.12,
  close_date: 2022-02-08
)
```

