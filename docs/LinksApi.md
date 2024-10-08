# MoneyKit::LinksApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_link**](LinksApi.md#delete_link) | **DELETE** /links/{id} | /links/{id} |
| [**get_link**](LinksApi.md#get_link) | **GET** /links/{id} | /links/{id} |
| [**get_user_links**](LinksApi.md#get_user_links) | **GET** /users/{id}/links | /users/{id}/links |
| [**import_link**](LinksApi.md#import_link) | **POST** /links/import | /links/import |
| [**reset_login**](LinksApi.md#reset_login) | **POST** /links/{id}/reset | Force a \&quot;relink required\&quot; state on a link (Test only). |
| [**update_link**](LinksApi.md#update_link) | **PATCH** /links/{id} | /links/{id} |


## delete_link

> delete_link(id)

/links/{id}

Deletes this link and disables its access token.         <p>After deletion, the link id and access token are no longer valid and cannot be used to access any data         that was associated with it.

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

Creates a new link with pre-populated accounts and transactions.  The new link will be created     in an initially `disconnected` state, with an error code of `auth_expired`, but all data will be available.     As with any disconnected link, the imported link can then be reconnected at any time by starting a new     <a href=#operation/create_link_session>/link-session</a> with `existing_link_id` set to the link's `link_id`.  Note that the link can be     reconnected using any suitable provider.     <p>     The imported data has a maximum size limit of 1MB, which corresponds very roughly to about 4000 transactions.     The data is processed synchronously, so you can expect a delay of up to 10 seconds before the response is     transmitted.  You should set generous HTTP read timeouts to avoid disconnecting before the import is complete.

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
import_link_request = MoneyKit::ImportLinkRequest.new({customer_user: MoneyKit::CustomerUser.new({id: 'id_example'}), institution_id: 'institution_id_example', accounts: [MoneyKit::AccountImportData.new({account_id: '74583934', name: 'Premier Checking', type: 'depository.checking', balances: MoneyKit::AccountBalances.new})], transactions: [MoneyKit::TransactionImportData.new({account_id: '74583934', amount: '384.05', date: 3.56})]}) # ImportLinkRequest | 

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


## reset_login

> <LinkCommon> reset_login(id)

Force a \"relink required\" state on a link (Test only).

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
  # Force a \"relink required\" state on a link (Test only).
  result = api_instance.reset_login(id)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->reset_login: #{e}"
end
```

#### Using the reset_login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkCommon>, Integer, Hash)> reset_login_with_http_info(id)

```ruby
begin
  # Force a \"relink required\" state on a link (Test only).
  data, status_code, headers = api_instance.reset_login_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkCommon>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->reset_login_with_http_info: #{e}"
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

