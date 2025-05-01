# MoneyKit::LinksApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_link**](LinksApi.md#delete_link) | **DELETE** /links/{id} | /links/{id} |
| [**get_link**](LinksApi.md#get_link) | **GET** /links/{id} | /links/{id} |
| [**get_links**](LinksApi.md#get_links) | **GET** /links | /links |
| [**get_user_links**](LinksApi.md#get_user_links) | **GET** /users/{id}/links | /users/{id}/links |
| [**import_link**](LinksApi.md#import_link) | **POST** /links/import | /links/import |
| [**import_transactions**](LinksApi.md#import_transactions) | **POST** /links/{id}/import/transactions | /links/{id}/import/transactions |
| [**reset_link**](LinksApi.md#reset_link) | **POST** /links/{id}/reset | /links/{id}/reset |
| [**update_link**](LinksApi.md#update_link) | **PATCH** /links/{id} | /links/{id} |


## delete_link

> delete_link(id)

/links/{id}

Deletes this link and disables its access token.         <p>After deletion, the link id and access token are no longer valid and cannot be used to access any data         that was associated with it.  MoneyKit retains a bare-minimum record of the deleted link for a period         (90 days) after deletion, so that your app can fetch the link by its ID and see that it is deleted;         but after 90 days, the link will be hard-deleted and is no longer accessible in any way.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::LinksApi.new
id = 'id_example' # String | The unique ID for this link.

begin
  # /links/{id}
  api_instance.delete_link(id)
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->delete_link: #{e}"
end
```

#### Using the delete_link_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_link_with_http_info(id)

```ruby
begin
  # /links/{id}
  data, status_code, headers = api_instance.delete_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->delete_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_link

> <LinkCommon> get_link(id)

/links/{id}

Fetches details about a link.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::LinksApi.new
id = 'id_example' # String | The unique ID for this link.

begin
  # /links/{id}
  result = api_instance.get_link(id)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->get_link: #{e}"
end
```

#### Using the get_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkCommon>, Integer, Hash)> get_link_with_http_info(id)

```ruby
begin
  # /links/{id}
  data, status_code, headers = api_instance.get_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkCommon>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->get_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |

### Return type

[**LinkCommon**](LinkCommon.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_links

> <GetLinksResponse> get_links(opts)

/links

Gets the list of all active links.  Active links are those that have been connected and     for which data has been fetched, and which have not been deleted.  The list is cursor-paged; submit the     `next_cursor` value to get the next page of links.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::LinksApi.new
opts = {
  cursor: 'cursor_example', # String | The next_cursor value from the previous batch
  limit: 56 # Integer | The number of links per page.
}

begin
  # /links
  result = api_instance.get_links(opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->get_links: #{e}"
end
```

#### Using the get_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinksResponse>, Integer, Hash)> get_links_with_http_info(opts)

```ruby
begin
  # /links
  data, status_code, headers = api_instance.get_links_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinksResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->get_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | The next_cursor value from the previous batch | [optional] |
| **limit** | **Integer** | The number of links per page. | [optional][default to 1000] |

### Return type

[**GetLinksResponse**](GetLinksResponse.md)

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

api_instance = MoneyKit::LinksApi.new
id = 'id_example' # String | The unique ID for this user.  This is the same ID provided         in the call to <a href=/api/operation/create_link_session#customer_user-id>link-session</a> to create any link for this user.

begin
  # /users/{id}/links
  result = api_instance.get_user_links(id)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->get_user_links: #{e}"
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
  puts "Error when calling LinksApi->get_user_links_with_http_info: #{e}"
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


## import_link

> <LinkCommon> import_link(import_link_request)

/links/import

Creates a new link with pre-populated accounts and (optionally) transactions.  The new link will     be created in an initially `disconnected` state, with an error code of `auth_expired`, but all data will be available.     As with any disconnected link, the imported link can then be reconnected at any time by starting a new     <a href=#operation/create_link_session>link-session</a> with `existing_link_id` set to the link's `link_id`.  Note that the link can be     reconnected using any suitable provider.     <p>     The imported data has a maximum size limit of 1MB, which corresponds very roughly to about 4000 transactions.     The data is processed synchronously, so you can expect a delay of up to 10 seconds before the response is     transmitted.  For large imports, you should set generous HTTP read timeouts to avoid disconnecting before the     import is complete.  Alternatively, you can import only accounts, and then use the <a href=/api/operation/import_transactions>import-transactions</a>     endpoint to add transactions in batches.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::LinksApi.new
import_link_request = MoneyKit::ImportLinkRequest.new({customer_user: MoneyKit::CustomerUser.new({id: 'id_example'}), institution_id: 'institution_id_example', accounts: [MoneyKit::AccountImportData.new({account_id: 'account_id_example', name: 'name_example', type: 'type_example', balances: MoneyKit::AccountBalances.new})], transactions: [MoneyKit::TransactionImportData.new({account_id: 'account_id_example', amount: 'amount_example', date: 3.56})]}) # ImportLinkRequest | 

begin
  # /links/import
  result = api_instance.import_link(import_link_request)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->import_link: #{e}"
end
```

#### Using the import_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkCommon>, Integer, Hash)> import_link_with_http_info(import_link_request)

```ruby
begin
  # /links/import
  data, status_code, headers = api_instance.import_link_with_http_info(import_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkCommon>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->import_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **import_link_request** | [**ImportLinkRequest**](ImportLinkRequest.md) |  |  |

### Return type

[**LinkCommon**](LinkCommon.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## import_transactions

> <LinkCommon> import_transactions(id, import_transactions_request)

/links/{id}/import/transactions

Adds transactions to a link imported with the <a href=/api/operation/import_link>import</a> endpoint.  The imported data has a     maximum size limit of 1MB, which corresponds very roughly to about 4000 transactions.  The data is processed     synchronously, so you can expect a delay of up to 10 seconds before the response is transmitted.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::LinksApi.new
id = 'id_example' # String | The unique ID for this link.
import_transactions_request = MoneyKit::ImportTransactionsRequest.new({transactions: [MoneyKit::TransactionImportData.new({account_id: 'account_id_example', amount: 'amount_example', date: 3.56})]}) # ImportTransactionsRequest | 

begin
  # /links/{id}/import/transactions
  result = api_instance.import_transactions(id, import_transactions_request)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->import_transactions: #{e}"
end
```

#### Using the import_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkCommon>, Integer, Hash)> import_transactions_with_http_info(id, import_transactions_request)

```ruby
begin
  # /links/{id}/import/transactions
  data, status_code, headers = api_instance.import_transactions_with_http_info(id, import_transactions_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkCommon>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->import_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **import_transactions_request** | [**ImportTransactionsRequest**](ImportTransactionsRequest.md) |  |  |

### Return type

[**LinkCommon**](LinkCommon.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reset_link

> <LinkCommon> reset_link(id)

/links/{id}/reset

Forcibly disconnects a link, for testing purposes.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::LinksApi.new
id = 'id_example' # String | The unique ID for this link.

begin
  # /links/{id}/reset
  result = api_instance.reset_link(id)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->reset_link: #{e}"
end
```

#### Using the reset_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkCommon>, Integer, Hash)> reset_link_with_http_info(id)

```ruby
begin
  # /links/{id}/reset
  data, status_code, headers = api_instance.reset_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkCommon>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->reset_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |

### Return type

[**LinkCommon**](LinkCommon.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_link

> <LinkCommon> update_link(id, update_link_request)

/links/{id}

Updates the link configuration.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::LinksApi.new
id = 'id_example' # String | The unique ID for this link.
update_link_request = MoneyKit::UpdateLinkRequest.new # UpdateLinkRequest | 

begin
  # /links/{id}
  result = api_instance.update_link(id, update_link_request)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->update_link: #{e}"
end
```

#### Using the update_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkCommon>, Integer, Hash)> update_link_with_http_info(id, update_link_request)

```ruby
begin
  # /links/{id}
  data, status_code, headers = api_instance.update_link_with_http_info(id, update_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkCommon>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->update_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **update_link_request** | [**UpdateLinkRequest**](UpdateLinkRequest.md) |  |  |

### Return type

[**LinkCommon**](LinkCommon.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

