# MoneyKit::AccountNumbersApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_numbers**](AccountNumbersApi.md#get_account_numbers) | **GET** /links/{id}/accounts/numbers | /links/{id}/accounts/numbers |


## get_account_numbers

> <GetAccountNumbersResponse> get_account_numbers(id, opts)

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

api_instance = MoneyKit::AccountNumbersApi.new
id = 'mk_eqkWN34UEoa2NxyALG8pcV' # String | The unique ID for this link.
opts = {
  moneykit_version: 'moneykit_version_example' # String | 
}

begin
  # /links/{id}/accounts/numbers
  result = api_instance.get_account_numbers(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling AccountNumbersApi->get_account_numbers: #{e}"
end
```

#### Using the get_account_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountNumbersResponse>, Integer, Hash)> get_account_numbers_with_http_info(id, opts)

```ruby
begin
  # /links/{id}/accounts/numbers
  data, status_code, headers = api_instance.get_account_numbers_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountNumbersResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling AccountNumbersApi->get_account_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **moneykit_version** | **String** |  | [optional][default to &#39;2023-02-18&#39;] |

### Return type

[**GetAccountNumbersResponse**](GetAccountNumbersResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

