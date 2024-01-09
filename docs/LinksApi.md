# MoneyKit::LinksApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**disconnect**](LinksApi.md#disconnect) | **DELETE** /links/{id} | /links/{id} |
| [**get_link**](LinksApi.md#get_link) | **GET** /links/{id} | /links/{id} |
| [**get_user_links**](LinksApi.md#get_user_links) | **GET** /users/{id}/links | /users/{id}/links |
| [**reset_login**](LinksApi.md#reset_login) | **POST** /links/{id}/reset | Force a \&quot;relink required\&quot; state on a link (Test only). |
| [**update_link**](LinksApi.md#update_link) | **PATCH** /links/{id} | /links/{id} |


## disconnect

> disconnect(id)

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
id = 'mk_eqkWN34UEoa2NxyALG8pcV' # String | The unique ID for this link.

begin
  # /links/{id}
  api_instance.disconnect(id)
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->disconnect: #{e}"
end
```

#### Using the disconnect_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disconnect_with_http_info(id)

```ruby
begin
  # /links/{id}
  data, status_code, headers = api_instance.disconnect_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->disconnect_with_http_info: #{e}"
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

> <LinkResponse> get_link(id)

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
id = 'mk_eqkWN34UEoa2NxyALG8pcV' # String | The unique ID for this link.

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

> <Array(<LinkResponse>, Integer, Hash)> get_link_with_http_info(id)

```ruby
begin
  # /links/{id}
  data, status_code, headers = api_instance.get_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->get_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |

### Return type

[**LinkResponse**](LinkResponse.md)

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
id = 'MyUser1234' # String | The unique ID for this user.  This is the same ID provided         in the call to <a href=#operation/create_link_session>/link-session</a> to create any link for this user.

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
| **id** | **String** | The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user. |  |

### Return type

[**GetUserLinksResponse**](GetUserLinksResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_login

> <LinkResponse> reset_login(id)

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
id = 'mk_eqkWN34UEoa2NxyALG8pcV' # String | The unique ID for this link.

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

> <Array(<LinkResponse>, Integer, Hash)> reset_login_with_http_info(id)

```ruby
begin
  # Force a \"relink required\" state on a link (Test only).
  data, status_code, headers = api_instance.reset_login_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinksApi->reset_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |

### Return type

[**LinkResponse**](LinkResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_link

> <LinkResponse> update_link(id, update_link_request)

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
id = 'mk_eqkWN34UEoa2NxyALG8pcV' # String | The unique ID for this link.
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

> <Array(<LinkResponse>, Integer, Hash)> update_link_with_http_info(id, update_link_request)

```ruby
begin
  # /links/{id}
  data, status_code, headers = api_instance.update_link_with_http_info(id, update_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkResponse>
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

[**LinkResponse**](LinkResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

