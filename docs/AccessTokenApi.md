# MoneyKit::AccessTokenApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_access_token**](AccessTokenApi.md#create_access_token) | **POST** /auth/token | /auth/token |
| [**get_well_known_jwks**](AccessTokenApi.md#get_well_known_jwks) | **GET** /.well-known/jwks.json | /.well-known/jwks.json |
| [**instrospect_client**](AccessTokenApi.md#instrospect_client) | **GET** /auth/introspect | /auth/introspect |


## create_access_token

> <CreateAccessTokenResponse> create_access_token(opts)

/auth/token

Create a new short-lived access token by validating your `client_id` and `client_secret`.  The `access_token` is to be forwarded with all subsequent requests as `Authorization: Bearer {access_token}` HTTP header.  When the token expires you must regenerate your `access_token`.  The `client_id` and `client_secret` can be supplied as POST body parameters, or as a HTTP basic auth header.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = MoneyKit::AccessTokenApi.new
opts = {
  grant_type: 'grant_type_example', # String | Token grant type. Only `client_credentials` supported.
  scope: 'scope_example', # String | Actions to be allowed for this token, given as one or more strings separated by spaces.             If omitted, all actions allowed for your application will be granted to this token.
  client_id: 'client_id_example', # String | Your application's MoneyKit client ID.
  client_secret: 'client_secret_example' # String | Your application's MoneyKit client secret.
}

begin
  # /auth/token
  result = api_instance.create_access_token(opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling AccessTokenApi->create_access_token: #{e}"
end
```

#### Using the create_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccessTokenResponse>, Integer, Hash)> create_access_token_with_http_info(opts)

```ruby
begin
  # /auth/token
  data, status_code, headers = api_instance.create_access_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccessTokenResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling AccessTokenApi->create_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | Token grant type. Only &#x60;client_credentials&#x60; supported. | [optional] |
| **scope** | **String** | Actions to be allowed for this token, given as one or more strings separated by spaces.             If omitted, all actions allowed for your application will be granted to this token. | [optional][default to &#39;&#39;] |
| **client_id** | **String** | Your application&#39;s MoneyKit client ID. | [optional] |
| **client_secret** | **String** | Your application&#39;s MoneyKit client secret. | [optional] |

### Return type

[**CreateAccessTokenResponse**](CreateAccessTokenResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_well_known_jwks

> <JWKSet> get_well_known_jwks(opts)

/.well-known/jwks.json

The JSON Web Key Set (JWKS) is a set of keys containing the public keys used to verify     JWTs in webhooks sent by MoneyKit.      The JWKS should be cached, but MoneyKit rotates its webhook keys periodically, so if an     incoming webhook's JWT has a key ID (`kid`) not contained in the cached JWKS, you should fetch     and cache the updated JWKS using this endpoint.

### Examples

```ruby
require 'time'
require 'moneykit'

api_instance = MoneyKit::AccessTokenApi.new
opts = {
  x_client_id: 'x_client_id_example', # String | Your client ID.
  authorization: 'authorization_example' # String | (Deprecated) An access token obtained from <a href=#operation/create_access_token>/auth/token</a>.  This method works         but is deprecated in favor of using `X-Client-Id`.
}

begin
  # /.well-known/jwks.json
  result = api_instance.get_well_known_jwks(opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling AccessTokenApi->get_well_known_jwks: #{e}"
end
```

#### Using the get_well_known_jwks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JWKSet>, Integer, Hash)> get_well_known_jwks_with_http_info(opts)

```ruby
begin
  # /.well-known/jwks.json
  data, status_code, headers = api_instance.get_well_known_jwks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JWKSet>
rescue MoneyKit::ApiError => e
  puts "Error when calling AccessTokenApi->get_well_known_jwks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_client_id** | **String** | Your client ID. | [optional] |
| **authorization** | **String** | (Deprecated) An access token obtained from &lt;a href&#x3D;#operation/create_access_token&gt;/auth/token&lt;/a&gt;.  This method works         but is deprecated in favor of using &#x60;X-Client-Id&#x60;. | [optional] |

### Return type

[**JWKSet**](JWKSet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## instrospect_client

> <AppClientResponse> instrospect_client

/auth/introspect

Get details about the client and application associated with your `access_token`.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::AccessTokenApi.new

begin
  # /auth/introspect
  result = api_instance.instrospect_client
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling AccessTokenApi->instrospect_client: #{e}"
end
```

#### Using the instrospect_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppClientResponse>, Integer, Hash)> instrospect_client_with_http_info

```ruby
begin
  # /auth/introspect
  data, status_code, headers = api_instance.instrospect_client_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppClientResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling AccessTokenApi->instrospect_client_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AppClientResponse**](AppClientResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

