# MoneyKit::ProductsApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**refresh_products**](ProductsApi.md#refresh_products) | **POST** /links/{id}/products | /links/{id}/products |


## refresh_products

> refresh_products(id, refresh_products_request, opts)

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
opts = {
  moneykit_version: 'moneykit_version_example' # String | 
}

begin
  # /links/{id}/products
  api_instance.refresh_products(id, refresh_products_request, opts)
rescue MoneyKit::ApiError => e
  puts "Error when calling ProductsApi->refresh_products: #{e}"
end
```

#### Using the refresh_products_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> refresh_products_with_http_info(id, refresh_products_request, opts)

```ruby
begin
  # /links/{id}/products
  data, status_code, headers = api_instance.refresh_products_with_http_info(id, refresh_products_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MoneyKit::ApiError => e
  puts "Error when calling ProductsApi->refresh_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **refresh_products_request** | [**RefreshProductsRequest**](RefreshProductsRequest.md) |  |  |
| **moneykit_version** | **String** |  | [optional][default to &#39;2023-02-18&#39;] |

### Return type

nil (empty response body)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
