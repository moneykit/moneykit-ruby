# MoneyKit::UsersApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_accounts**](UsersApi.md#get_user_accounts) | **GET** /users/{id}/accounts | /users/{id}/accounts |
| [**get_user_links**](UsersApi.md#get_user_links) | **GET** /users/{id}/links | /users/{id}/links |
| [**get_user_transactions**](UsersApi.md#get_user_transactions) | **GET** /users/{id}/transactions | /users/{id}/transactions |


## get_user_accounts

> <GetUserAccountsResponse> get_user_accounts(id, opts)

/users/{id}/accounts

Fetches all accounts belonging to a <a href=#operation/get_user_accounts>user</a>.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::UsersApi.new
id = 'id_example' # String | The unique ID for this user.  This is the same ID provided         in the call to <a href=/api/operation/create_link_session#customer_user-id>link-session</a> to create any link for this user.
opts = {
  account_ids: ['inner_example'], # Array<String> | If present, filters results to accounts matching the given IDs.
  institution_ids: ['inner_example'] # Array<String> | If present, filters results to accounts at institutions matching the given IDs.
}

begin
  # /users/{id}/accounts
  result = api_instance.get_user_accounts(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling UsersApi->get_user_accounts: #{e}"
end
```

#### Using the get_user_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserAccountsResponse>, Integer, Hash)> get_user_accounts_with_http_info(id, opts)

```ruby
begin
  # /users/{id}/accounts
  data, status_code, headers = api_instance.get_user_accounts_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserAccountsResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling UsersApi->get_user_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;/api/operation/create_link_session#customer_user-id&gt;link-session&lt;/a&gt; to create any link for this user. |  |
| **account_ids** | [**Array&lt;String&gt;**](String.md) | If present, filters results to accounts matching the given IDs. | [optional] |
| **institution_ids** | [**Array&lt;String&gt;**](String.md) | If present, filters results to accounts at institutions matching the given IDs. | [optional] |

### Return type

[**GetUserAccountsResponse**](GetUserAccountsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_links

> <GetUserLinksResponse> get_user_links(id)

/users/{id}/links

Fetches all links belonging to a <a href=#operation/get_user_accounts>user</a>.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::UsersApi.new
id = 'id_example' # String | The unique ID for this user.  This is the same ID provided         in the call to <a href=/api/operation/create_link_session#customer_user-id>link-session</a> to create any link for this user.

begin
  # /users/{id}/links
  result = api_instance.get_user_links(id)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling UsersApi->get_user_links: #{e}"
end
```

#### Using the get_user_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserLinksResponse>, Integer, Hash)> get_user_links_with_http_info(id)

```ruby
begin
  # /users/{id}/links
  data, status_code, headers = api_instance.get_user_links_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserLinksResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling UsersApi->get_user_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;/api/operation/create_link_session#customer_user-id&gt;link-session&lt;/a&gt; to create any link for this user. |  |

### Return type

[**GetUserLinksResponse**](GetUserLinksResponse.md)

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

api_instance = MoneyKit::UsersApi.new
id = 'id_example' # String | The unique ID for this user.  This is the same ID provided         in the call to <a href=/api/operation/create_link_session#customer_user-id>link-session</a> to create any link for this user.
opts = {
  transaction_type: [MoneyKit::TransactionTypeFilter::CREDIT], # Array<TransactionTypeFilter> | 
  category: ['inner_example'], # Array<String> | 
  account_id: ['inner_example'], # Array<String> | If present, filters results to transactions in accounts matching the given IDs.
  institution_id: ['inner_example'], # Array<String> | If present, filters results to transactions at institutions matching the given IDs.
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
  puts "Error when calling UsersApi->get_user_transactions: #{e}"
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
  puts "Error when calling UsersApi->get_user_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;/api/operation/create_link_session#customer_user-id&gt;link-session&lt;/a&gt; to create any link for this user. |  |
| **transaction_type** | [**Array&lt;TransactionTypeFilter&gt;**](TransactionTypeFilter.md) |  | [optional] |
| **category** | [**Array&lt;String&gt;**](String.md) |  | [optional] |
| **account_id** | [**Array&lt;String&gt;**](String.md) | If present, filters results to transactions in accounts matching the given IDs. | [optional] |
| **institution_id** | [**Array&lt;String&gt;**](String.md) | If present, filters results to transactions at institutions matching the given IDs. | [optional] |
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

