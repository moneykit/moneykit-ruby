# MoneyKit::LinkSessionApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_link_session**](LinkSessionApi.md#create_link_session) | **POST** /link-session | /link-session |
| [**exchange_token**](LinkSessionApi.md#exchange_token) | **POST** /link-session/exchange-token | /link-session/exchange-token |


## create_link_session

> <CreateLinkSessionResponse> create_link_session(create_link_session_request)

/link-session

This endpoint is to be called by your back end, to establish a new link session         for creating a link to your end user's institution.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::LinkSessionApi.new
create_link_session_request = MoneyKit::CreateLinkSessionRequest.new({customer_user: MoneyKit::CustomerUser.new({id: 'id_example'}), redirect_uri: 'redirect_uri_example'}) # CreateLinkSessionRequest | 

begin
  # /link-session
  result = api_instance.create_link_session(create_link_session_request)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling LinkSessionApi->create_link_session: #{e}"
end
```

#### Using the create_link_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLinkSessionResponse>, Integer, Hash)> create_link_session_with_http_info(create_link_session_request)

```ruby
begin
  # /link-session
  data, status_code, headers = api_instance.create_link_session_with_http_info(create_link_session_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLinkSessionResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinkSessionApi->create_link_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_link_session_request** | [**CreateLinkSessionRequest**](CreateLinkSessionRequest.md) |  |  |

### Return type

[**CreateLinkSessionResponse**](CreateLinkSessionResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_token

> <ExchangeTokenResponse> exchange_token(exchange_token_request)

/link-session/exchange-token

After the end user has successfully completed the linking process, your back end     calls this endpoint to exchange the token received by your front end for a `link_id` that can be used to access     the link's data.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::LinkSessionApi.new
exchange_token_request = MoneyKit::ExchangeTokenRequest.new({exchangeable_token: 'exchangeable_token_example'}) # ExchangeTokenRequest | 

begin
  # /link-session/exchange-token
  result = api_instance.exchange_token(exchange_token_request)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling LinkSessionApi->exchange_token: #{e}"
end
```

#### Using the exchange_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExchangeTokenResponse>, Integer, Hash)> exchange_token_with_http_info(exchange_token_request)

```ruby
begin
  # /link-session/exchange-token
  data, status_code, headers = api_instance.exchange_token_with_http_info(exchange_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExchangeTokenResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling LinkSessionApi->exchange_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_token_request** | [**ExchangeTokenRequest**](ExchangeTokenRequest.md) |  |  |

### Return type

[**ExchangeTokenResponse**](ExchangeTokenResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

