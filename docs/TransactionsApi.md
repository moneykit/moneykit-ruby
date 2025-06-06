# MoneyKit::TransactionsApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**correct_enrichment**](TransactionsApi.md#correct_enrichment) | **POST** /links/{id}/transactions/{txn_id}/enrichment | /links/{id}/transactions/{txn_id}/enrichment |
| [**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /links/{id}/transactions | /links/{id}/transactions |
| [**get_transactions_sync**](TransactionsApi.md#get_transactions_sync) | **GET** /links/{id}/transactions/sync | /links/{id}/transactions/sync |
| [**get_user_transactions**](TransactionsApi.md#get_user_transactions) | **GET** /users/{id}/transactions | /users/{id}/transactions |


## correct_enrichment

> <ApiPublicTransactionsGetTransactionsResponse> correct_enrichment(id, txn_id, bud_category)

/links/{id}/transactions/{txn_id}/enrichment

Manually update the enrichment categories for a specific transaction.     The transaction will be updated with your corrections, which are then used to refine future categorizations.     This endpoint returns the updated transaction, along with similar past transactions, using the same format as when retrieving transactions for a link.

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
id = 'id_example' # String | The unique ID for this link.
txn_id = 'txn_id_example' # String | 
bud_category = MoneyKit::BudCategory.new({category: MoneyKit::BudPrimaryCategory::BANKING}) # BudCategory | 

begin
  # /links/{id}/transactions/{txn_id}/enrichment
  result = api_instance.correct_enrichment(id, txn_id, bud_category)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling TransactionsApi->correct_enrichment: #{e}"
end
```

#### Using the correct_enrichment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiPublicTransactionsGetTransactionsResponse>, Integer, Hash)> correct_enrichment_with_http_info(id, txn_id, bud_category)

```ruby
begin
  # /links/{id}/transactions/{txn_id}/enrichment
  data, status_code, headers = api_instance.correct_enrichment_with_http_info(id, txn_id, bud_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiPublicTransactionsGetTransactionsResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling TransactionsApi->correct_enrichment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **txn_id** | **String** |  |  |
| **bud_category** | [**BudCategory**](BudCategory.md) |  |  |

### Return type

[**ApiPublicTransactionsGetTransactionsResponse**](ApiPublicTransactionsGetTransactionsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_transactions

> <ApiPublicTransactionsLegacyGetTransactionsResponse> get_transactions(id, opts)

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
id = 'id_example' # String | The unique ID for this link.
opts = {
  account_ids: ['inner_example'], # Array<String> | An optional list of account IDs to filter the results.
  page: 56, # Integer | The page number to return.
  size: 56, # Integer | The number of items to return per page.
  start_date: Date.parse('2013-10-20'), # Date | The earliest date for which data should be returned, formatted as YYYY-MM-DD.
  end_date: Date.parse('2013-10-20') # Date | The latest date for which data should be returned, formatted as YYYY-MM-DD.
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

> <Array(<ApiPublicTransactionsLegacyGetTransactionsResponse>, Integer, Hash)> get_transactions_with_http_info(id, opts)

```ruby
begin
  # /links/{id}/transactions
  data, status_code, headers = api_instance.get_transactions_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiPublicTransactionsLegacyGetTransactionsResponse>
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
| **start_date** | **Date** | The earliest date for which data should be returned, formatted as YYYY-MM-DD. | [optional] |
| **end_date** | **Date** | The latest date for which data should be returned, formatted as YYYY-MM-DD. | [optional] |

### Return type

[**ApiPublicTransactionsLegacyGetTransactionsResponse**](ApiPublicTransactionsLegacyGetTransactionsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transactions_sync

> <TransactionSyncResponse> get_transactions_sync(id, opts)

/links/{id}/transactions/sync

Provides a paginated feed of transactions, grouped into `created`, `updated`, and `removed` lists.         <p>Each call will also return a `cursor.next` value.  In subsequent calls, include that value to receive         only changes that have occurred since the previous call.  **Note** that these lists are **unordered**,         so it is possible to get transactions with dates that precede those you've fetched in previous calls to this         endpoint.  Older transactions can be added, for example, when historical data becomes accessible later.         <p>**Pending** transactions will only be reported as `created`.  Pending transactions are completely         removed and replaced with each transaction refresh or update; no attempt is made to track their removal or         modification.  Pending transactions will **not** be reported in the `removed` list.  If you store         pending transactions, you should remove and replace them entirely each time you fetch new transactions.         <p>Large numbers of transactions will be paginated, and the `has_more` field will be true.  You should         continue calling this endpoint with each new `cursor.next` value until `has_more` is false.         <p>**Note** that this endpoint does **not** trigger a fetch of transactions from the institution; it merely returns         transactions that have already been fetched, either because `prefetch` was requested when the link was created,         or because of scheduled or on-demand updates.         <p>MoneyKit checks for updated account data, including transactions, periodically throughout the day, but the         update frequency can vary, depending on the downstream data provider, the institution, and whether one or both         provide webhook-based updates.         **To force a check for updated transactions, you can use the <a href=#operation/refresh_products>/products</a> endpoint.**         <p>Note also that the `transactions.updates_available` webhook will alert you when new data is available.

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
id = 'id_example' # String | The unique ID for this link.
opts = {
  cursor: 'cursor_example', # String | A cursor value representing the last update requested. If included, the response will only return         changes after this update. If omitted, a complete history of updates will be returned. This value must be stored         by the client as we do not keep track of app cursors.
  size: 56 # Integer | The number of items to return.
}

begin
  # /links/{id}/transactions/sync
  result = api_instance.get_transactions_sync(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_sync: #{e}"
end
```

#### Using the get_transactions_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionSyncResponse>, Integer, Hash)> get_transactions_sync_with_http_info(id, opts)

```ruby
begin
  # /links/{id}/transactions/sync
  data, status_code, headers = api_instance.get_transactions_sync_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionSyncResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **cursor** | **String** | A cursor value representing the last update requested. If included, the response will only return         changes after this update. If omitted, a complete history of updates will be returned. This value must be stored         by the client as we do not keep track of app cursors. | [optional] |
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
id = 'id_example' # String | The unique ID for this user.  This is the same ID provided         in the call to <a href=/api/operation/create_link_session#customer_user-id>link-session</a> to create a link for this user.
opts = {
  transaction_type: [MoneyKit::TransactionTypeFilter::CREDIT], # Array<TransactionTypeFilter> | DEPRECATED; ignored
  category: ['inner_example'], # Array<String> | DEPRECATED; ignored
  account_id: ['inner_example'], # Array<String> | If present, filters results to transactions in accounts matching the given IDs.
  institution_id: ['inner_example'], # Array<String> | DEPRECATED; ignored
  page: 56, # Integer | The page number to return.
  size: 56, # Integer | The number of items to return per page.
  start_date: Date.parse('2013-10-20'), # Date | The earliest date for which data should be returned, formatted as YYYY-MM-DD.
  end_date: Date.parse('2013-10-20') # Date | The latest date for which data should be returned, formatted as YYYY-MM-DD.
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
| **id** | **String** | The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;/api/operation/create_link_session#customer_user-id&gt;link-session&lt;/a&gt; to create a link for this user. |  |
| **transaction_type** | [**Array&lt;TransactionTypeFilter&gt;**](TransactionTypeFilter.md) | DEPRECATED; ignored | [optional] |
| **category** | [**Array&lt;String&gt;**](String.md) | DEPRECATED; ignored | [optional] |
| **account_id** | [**Array&lt;String&gt;**](String.md) | If present, filters results to transactions in accounts matching the given IDs. | [optional] |
| **institution_id** | [**Array&lt;String&gt;**](String.md) | DEPRECATED; ignored | [optional] |
| **page** | **Integer** | The page number to return. | [optional][default to 1] |
| **size** | **Integer** | The number of items to return per page. | [optional][default to 50] |
| **start_date** | **Date** | The earliest date for which data should be returned, formatted as YYYY-MM-DD. | [optional] |
| **end_date** | **Date** | The latest date for which data should be returned, formatted as YYYY-MM-DD. | [optional] |

### Return type

[**GetUserTransactionsResponse**](GetUserTransactionsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

