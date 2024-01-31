# MoneyKit::ProductsApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**refresh_products**](ProductsApi.md#refresh_products) | **POST** /links/{id}/products | /links/{id}/products |


## refresh_products

> <LinkCommon> refresh_products(id, refresh_products_request)

/links/{id}/products

Requests an update of the provided products for the link.     This is an asynchronous operation. The response will be a 202 Accepted if the request was successful.     Refreshes are subject to rate limiting.     <br><br>     <b>Rate Limiting</b><br>     <ul>         <li>1 refresh per link per hour for account data</li>         <li>1 refresh per link per hour for transaction data</li>         <li>1 refresh per link per day for account numbers</li>         <li>1 refresh per link per day for identity data</li>     </ul>

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::ProductsApi.new
id = 'mk_eqkWN34UEoa2NxyALG8pcV' # String | The unique ID for this link.
refresh_products_request = MoneyKit::RefreshProductsRequest.new({products: [MoneyKit::Product::ACCOUNTS]}) # RefreshProductsRequest | 

begin
  # /links/{id}/products
  result = api_instance.refresh_products(id, refresh_products_request)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling ProductsApi->refresh_products: #{e}"
end
```

#### Using the refresh_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkCommon>, Integer, Hash)> refresh_products_with_http_info(id, refresh_products_request)

```ruby
begin
  # /links/{id}/products
  data, status_code, headers = api_instance.refresh_products_with_http_info(id, refresh_products_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkCommon>
rescue MoneyKit::ApiError => e
  puts "Error when calling ProductsApi->refresh_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **refresh_products_request** | [**RefreshProductsRequest**](RefreshProductsRequest.md) |  |  |

### Return type

[**LinkCommon**](LinkCommon.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

