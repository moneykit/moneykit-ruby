# MoneyKit::TransactionsApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /links/{id}/transactions | /links/{id}/transactions |
| [**get_transactions_diff**](TransactionsApi.md#get_transactions_diff) | **GET** /links/{id}/transactions/sync | /links/{id}/transactions/sync |
| [**get_user_transactions**](TransactionsApi.md#get_user_transactions) | **GET** /users/{id}/transactions | /users/{id}/transactions |


## get_transactions

> <GetTransactionsResponse> get_transactions(id, opts)

/links/{id}/transactions

Returns transactions for the accounts associated with a <a href=#tag/Links>link</a>.  Results are     paginated, and returned in reverse chronological order.     <p>**Note** that this endpoint does **not** trigger a fetch of transactions from the institution; it merely returns     transactions that have already been fetched, either because `prefetch` was requested when the link was created,     or because of scheduled or on-demand updates.     <p>MoneyKit checks for updated account data, including transactions, periodically throughout the day, but the     update frequency can vary, depending on the downstream data provider, the institution, and whether one or both     provide webhook-based updates.  **To force a check for updated transactions, you can use the     <a href=#operation/refresh_products>/products</a> endpoint.**     <p>If you have requested prefetch or an on-demand update, you should check the `refreshed_at` date     for this product in the returned response, and compare that against the previous `refreshed_at` date, which you can     get from any previous response for this or any other account or link request.  If the refreshed_at date has not     increased, then updated data is not yet available.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::TransactionsApi.new
id = 'mk_eqkWN34UEoa2NxyALG8pcV' # String | The unique ID for this link.
opts = {
  account_ids: ['inner_example'], # Array<String> | An optional list of account IDs to filter the results.
  page: 56, # Integer | The page number to return.
  size: 56, # Integer | The number of items to return per page.
  start_date: Date.parse('2013-10-20'), # Date | The earliest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to 90 days before the `end_date`.             <p>If you want to retrieve **all** transactions, use `1900-01-01`.
  end_date: Date.parse('2013-10-20') # Date | The latest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to today.
}

begin
  # /links/{id}/transactions
  result = api_instance.get_transactions(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions: #{e}"
end
```

#### Using the get_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionsResponse>, Integer, Hash)> get_transactions_with_http_info(id, opts)

```ruby
begin
  # /links/{id}/transactions
  data, status_code, headers = api_instance.get_transactions_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionsResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **account_ids** | [**Array&lt;String&gt;**](String.md) | An optional list of account IDs to filter the results. | [optional] |
| **page** | **Integer** | The page number to return. | [optional][default to 1] |
| **size** | **Integer** | The number of items to return per page. | [optional][default to 50] |
| **start_date** | **Date** | The earliest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to 90 days before the &#x60;end_date&#x60;.             &lt;p&gt;If you want to retrieve **all** transactions, use &#x60;1900-01-01&#x60;. | [optional] |
| **end_date** | **Date** | The latest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to today. | [optional] |

### Return type

[**GetTransactionsResponse**](GetTransactionsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transactions_diff

> <TransactionSyncResponse> get_transactions_diff(id, opts)

/links/{id}/transactions/sync

Provides a paginated feed of transactions, grouped into `created`, `updated`, and `removed` lists.         <p>Each call will also return a `cursor.next` value.  In subsequent calls, include that value to receive         only changes that have occurred since the previous call.         <p>Large numbers of transactions will be paginated, and the `has_more` field will be true.  You should         continue calling this endpoint with each new `cursor.next` value until `has_more` is false.         <p>**Note** that this endpoint does **not** trigger a fetch of transactions from the institution; it merely returns         transactions that have already been fetched, either because `prefetch` was requested when the link was created,         or because of scheduled or on-demand updates.         <p>MoneyKit checks for updated account data, including transactions, periodically throughout the day, but the         update frequency can vary, depending on the downstream data provider, the institution, and whether one or both         provide webhook-based updates.         **To force a check for updated transactions, you can use the <a href=#operation/refresh_products>/products</a> endpoint.**         <p>Note also that the `transactions.updates_available` webhook will alert you when new data is available.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::TransactionsApi.new
id = 'mk_eqkWN34UEoa2NxyALG8pcV' # String | The unique ID for this link.
opts = {
  cursor: 'cursor_example', # String | A cursor value representing the last update requested. If included, the response will only return         changes after this update. If omitted, a complete history of updates will be returned. This value must be stored         by the client as we do not keep track of customer cursors.
  size: 56 # Integer | The number of items to return.
}

begin
  # /links/{id}/transactions/sync
  result = api_instance.get_transactions_diff(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_diff: #{e}"
end
```

#### Using the get_transactions_diff_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionSyncResponse>, Integer, Hash)> get_transactions_diff_with_http_info(id, opts)

```ruby
begin
  # /links/{id}/transactions/sync
  data, status_code, headers = api_instance.get_transactions_diff_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionSyncResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_diff_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **cursor** | **String** | A cursor value representing the last update requested. If included, the response will only return         changes after this update. If omitted, a complete history of updates will be returned. This value must be stored         by the client as we do not keep track of customer cursors. | [optional] |
| **size** | **Integer** | The number of items to return. | [optional][default to 50] |

### Return type

[**TransactionSyncResponse**](TransactionSyncResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_transactions

> <GetUserTransactionsResponse> get_user_transactions(id, opts)

/users/{id}/transactions

Fetches transactions for a <a href=#operation/get_user_accounts>user</a>.     <p>This endpoint fetches all transactions for a user across all of their links.  You can use it to retrieve     transactions from any or all accounts at once, regardless of which institution they belong to.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::TransactionsApi.new
id = 'MyUser1234' # String | The unique ID for this user.  This is the same ID provided         in the call to <a href=#operation/create_link_session>/link-session</a> to create any link for this user.
opts = {
  transaction_type: [MoneyKit::TransactionTypeFilter::CREDIT], # Array<TransactionTypeFilter> | 
  category: ['inner_example'], # Array<String> | 
  account_id: ['inner_example'], # Array<String> | If present, filters results to transactions in accounts matching the given IDs.
  institution_id: ['inner_example'], # Array<String> | If present, filters results to transactions at institutions matching the given IDs.
  page: 56, # Integer | The page number to return.
  size: 56, # Integer | The number of items to return per page.
  start_date: Date.parse('2013-10-20'), # Date | The earliest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to 90 days before the `end_date`.             <p>If you want to retrieve **all** transactions, use `1900-01-01`.
  end_date: Date.parse('2013-10-20') # Date | The latest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to today.
}

begin
  # /users/{id}/transactions
  result = api_instance.get_user_transactions(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling TransactionsApi->get_user_transactions: #{e}"
end
```

#### Using the get_user_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserTransactionsResponse>, Integer, Hash)> get_user_transactions_with_http_info(id, opts)

```ruby
begin
  # /users/{id}/transactions
  data, status_code, headers = api_instance.get_user_transactions_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserTransactionsResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling TransactionsApi->get_user_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user. |  |
| **transaction_type** | [**Array&lt;TransactionTypeFilter&gt;**](TransactionTypeFilter.md) |  | [optional] |
| **category** | [**Array&lt;String&gt;**](String.md) |  | [optional] |
| **account_id** | [**Array&lt;String&gt;**](String.md) | If present, filters results to transactions in accounts matching the given IDs. | [optional] |
| **institution_id** | [**Array&lt;String&gt;**](String.md) | If present, filters results to transactions at institutions matching the given IDs. | [optional] |
| **page** | **Integer** | The page number to return. | [optional][default to 1] |
| **size** | **Integer** | The number of items to return per page. | [optional][default to 50] |
| **start_date** | **Date** | The earliest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to 90 days before the &#x60;end_date&#x60;.             &lt;p&gt;If you want to retrieve **all** transactions, use &#x60;1900-01-01&#x60;. | [optional] |
| **end_date** | **Date** | The latest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to today. | [optional] |

### Return type

[**GetUserTransactionsResponse**](GetUserTransactionsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

