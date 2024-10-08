# MoneyKit::InvestmentsApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_holdings**](InvestmentsApi.md#get_holdings) | **GET** /links/{id}/investments/holdings | /links/{id}/investments/holdings |
| [**get_investment_transactions**](InvestmentsApi.md#get_investment_transactions) | **GET** /links/{id}/investments/transactions | /links/{id}/investments/transactions |


## get_holdings

> <GetHoldingsResponse> get_holdings(id, opts)

/links/{id}/investments/holdings

Returns holdings for the investment accounts associated with a <a href=#tag/Links>link</a>.     <p>**Note** that this endpoint does **not** trigger a fetch of holdings from the institution; it merely returns     holdings that have already been fetched.  **To force a check for new/updated owner information, you must use the     <a href=#operation/refresh_products>/products</a> endpoint.**     <p>If you have requested prefetch or an on-demand update, you should check the `refreshed_at` date     for this product in the returned response, and compare that against the previous `refreshed_at` date, which you can     get from any previous response for this or any other account or link request.  If the refreshed_at date has not     increased, then updated data is not yet available.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::InvestmentsApi.new
id = 'id_example' # String | The unique ID for this link.
opts = {
  account_ids: ['inner_example'] # Array<String> | An optional list of account IDs to filter the results.
}

begin
  # /links/{id}/investments/holdings
  result = api_instance.get_holdings(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling InvestmentsApi->get_holdings: #{e}"
end
```

#### Using the get_holdings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHoldingsResponse>, Integer, Hash)> get_holdings_with_http_info(id, opts)

```ruby
begin
  # /links/{id}/investments/holdings
  data, status_code, headers = api_instance.get_holdings_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHoldingsResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling InvestmentsApi->get_holdings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **account_ids** | [**Array&lt;String&gt;**](String.md) | An optional list of account IDs to filter the results. | [optional] |

### Return type

[**GetHoldingsResponse**](GetHoldingsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_investment_transactions

> <GetInvestmentTransactionsResponse> get_investment_transactions(id, opts)

/links/{id}/investments/transactions

Returns investment transactions for the accounts associated with a <a href=#tag/Links>link</a>.     Results are paginated, and returned in reverse chronological order.     <p>**Note** that this endpoint does **not** trigger a fetch of transactions from the institution; it merely returns     transactions that have already been fetched.  **To force a check for new/updated owner information, you must use the     <a href=#operation/refresh_products>/products</a> endpoint.**     <p>If you have requested prefetch or an on-demand update, you should check the `refreshed_at` date     for this product in the returned response, and compare that against the previous `refreshed_at` date, which you can     get from any previous response for this or any other account or link request.  If the refreshed_at date has not     increased, then updated data is not yet available.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::InvestmentsApi.new
id = 'id_example' # String | The unique ID for this link.
opts = {
  account_ids: ['inner_example'], # Array<String> | An optional list of account IDs to filter the results.
  page: 56, # Integer | The page number to return.
  size: 56, # Integer | The number of items to return per page.
  start_date: Date.parse('2013-10-20'), # Date | The earliest date for which data should be returned, formatted as YYYY-MM-DD.
  end_date: Date.parse('2013-10-20') # Date | The latest date for which data should be returned, formatted as YYYY-MM-DD.
}

begin
  # /links/{id}/investments/transactions
  result = api_instance.get_investment_transactions(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling InvestmentsApi->get_investment_transactions: #{e}"
end
```

#### Using the get_investment_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInvestmentTransactionsResponse>, Integer, Hash)> get_investment_transactions_with_http_info(id, opts)

```ruby
begin
  # /links/{id}/investments/transactions
  data, status_code, headers = api_instance.get_investment_transactions_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInvestmentTransactionsResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling InvestmentsApi->get_investment_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **account_ids** | [**Array&lt;String&gt;**](String.md) | An optional list of account IDs to filter the results. | [optional] |
| **page** | **Integer** | The page number to return. | [optional][default to 1] |
| **size** | **Integer** | The number of items to return per page. | [optional][default to 50] |
| **start_date** | **Date** | The earliest date for which data should be returned, formatted as YYYY-MM-DD. | [optional] |
| **end_date** | **Date** | The latest date for which data should be returned, formatted as YYYY-MM-DD. | [optional] |

### Return type

[**GetInvestmentTransactionsResponse**](GetInvestmentTransactionsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

