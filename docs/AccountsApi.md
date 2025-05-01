# MoneyKit::AccountsApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account**](AccountsApi.md#get_account) | **GET** /links/{id}/accounts/{account_id} | /links/{id}/accounts/{account_id} |
| [**get_account_numbers**](AccountsApi.md#get_account_numbers) | **GET** /links/{id}/accounts/numbers | /links/{id}/accounts/numbers |
| [**get_accounts**](AccountsApi.md#get_accounts) | **GET** /links/{id}/accounts | /links/{id}/accounts |
| [**get_user_accounts**](AccountsApi.md#get_user_accounts) | **GET** /users/{id}/accounts | /users/{id}/accounts |


## get_account

> <GetAccountResponse> get_account(id, account_id)

/links/{id}/accounts/{account_id}

Fetches a single account associated with a <a href=#tag/Links>link</a>.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::AccountsApi.new
id = 'id_example' # String | The unique ID for this link.
account_id = 'account_id_example' # String | The account ID to fetch.

begin
  # /links/{id}/accounts/{account_id}
  result = api_instance.get_account(id, account_id)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling AccountsApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountResponse>, Integer, Hash)> get_account_with_http_info(id, account_id)

```ruby
begin
  # /links/{id}/accounts/{account_id}
  data, status_code, headers = api_instance.get_account_with_http_info(id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling AccountsApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **account_id** | **String** | The account ID to fetch. |  |

### Return type

[**GetAccountResponse**](GetAccountResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_numbers

> <GetAccountNumbersResponseLegacy20230218> get_account_numbers(id)

/links/{id}/accounts/numbers

Returns a list of open, permissioned accounts associated with a <a href=#tag/Links>link</a>,         including full account and routing numbers for appropriate accounts (such as checking and savings accounts).         <p>**Note** that this endpoint does **not** trigger a fetch of account numbers from the institution; it merely returns         account numbers that have already been fetched, either because `prefetch` was requested when the link was created,         or because of an on-demand update.  **To force a check for new/updated account numbers, you must use the         <a href=#operation/refresh_products>/products</a> endpoint.**         <p>If you have requested prefetch or an on-demand update, you should check the `refreshed_at` date     for this product in the returned response, and compare that against the previous `refreshed_at` date, which you can     get from any previous response for this or any other account or link request.  If the refreshed_at date has not     increased, then updated data is not yet available.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::AccountsApi.new
id = 'id_example' # String | The unique ID for this link.

begin
  # /links/{id}/accounts/numbers
  result = api_instance.get_account_numbers(id)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling AccountsApi->get_account_numbers: #{e}"
end
```

#### Using the get_account_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountNumbersResponseLegacy20230218>, Integer, Hash)> get_account_numbers_with_http_info(id)

```ruby
begin
  # /links/{id}/accounts/numbers
  data, status_code, headers = api_instance.get_account_numbers_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountNumbersResponseLegacy20230218>
rescue MoneyKit::ApiError => e
  puts "Error when calling AccountsApi->get_account_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |

### Return type

[**GetAccountNumbersResponseLegacy20230218**](GetAccountNumbersResponseLegacy20230218.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts

> <GetAccountsResponse> get_accounts(id, opts)

/links/{id}/accounts

Returns a list of open, permissioned accounts associated with a <a href=#tag/Links>link</a>.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::AccountsApi.new
id = 'id_example' # String | The unique ID for this link.
opts = {
  account_ids: ['inner_example'] # Array<String> | An optional list of account IDs to filter the results.
}

begin
  # /links/{id}/accounts
  result = api_instance.get_accounts(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling AccountsApi->get_accounts: #{e}"
end
```

#### Using the get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountsResponse>, Integer, Hash)> get_accounts_with_http_info(id, opts)

```ruby
begin
  # /links/{id}/accounts
  data, status_code, headers = api_instance.get_accounts_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountsResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling AccountsApi->get_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **account_ids** | [**Array&lt;String&gt;**](String.md) | An optional list of account IDs to filter the results. | [optional] |

### Return type

[**GetAccountsResponse**](GetAccountsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

api_instance = MoneyKit::AccountsApi.new
id = 'id_example' # String | The unique ID for this user.  This is the same ID provided         in the call to <a href=/api/operation/create_link_session#customer_user-id>link-session</a> to create any link for this user.
opts = {
  account_ids: ['inner_example'], # Array<String> | If present, filters results to accounts matching the given IDs.
  institution_ids: ['inner_example'] # Array<String> | DEPRECATED; ignored
}

begin
  # /users/{id}/accounts
  result = api_instance.get_user_accounts(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling AccountsApi->get_user_accounts: #{e}"
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
  puts "Error when calling AccountsApi->get_user_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;/api/operation/create_link_session#customer_user-id&gt;link-session&lt;/a&gt; to create any link for this user. |  |
| **account_ids** | [**Array&lt;String&gt;**](String.md) | If present, filters results to accounts matching the given IDs. | [optional] |
| **institution_ids** | [**Array&lt;String&gt;**](String.md) | DEPRECATED; ignored | [optional] |

### Return type

[**GetUserAccountsResponse**](GetUserAccountsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

