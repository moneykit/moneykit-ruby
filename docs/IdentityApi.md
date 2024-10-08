# MoneyKit::IdentityApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_identities**](IdentityApi.md#get_identities) | **GET** /links/{id}/identity | /links/{id}/identity |


## get_identities

> <IdentityResponse> get_identities(id, opts)

/links/{id}/identity

Returns account owner information from the institution, including names, emails, phone     numbers, and addresses, for all permissioned accounts associated with a <a href=#tag/Links>link</a>.  This information     will appear in the `owners` list in the `accounts` object.     <p>Some fields may be empty, if not provided by the institution.     <p>**Note** that this endpoint does **not** trigger a fetch of owner information from the institution; it merely returns     owner information that has already been fetched, either because `prefetch` was requested when the link was created,     or because of an on-demand update.  **To force a check for new/updated owner information, you must use the     <a href=#operation/refresh_products>/products</a> endpoint.**     <p>If you have requested prefetch or an on-demand update, you should check the `refreshed_at` date     for this product in the returned response, and compare that against the previous `refreshed_at` date, which you can     get from any previous response for this or any other account or link request.  If the refreshed_at date has not     increased, then updated data is not yet available.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::IdentityApi.new
id = 'id_example' # String | The unique ID for this link.
opts = {
  account_ids: ['inner_example'] # Array<String> | An optional list of account IDs to filter the results.
}

begin
  # /links/{id}/identity
  result = api_instance.get_identities(id, opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling IdentityApi->get_identities: #{e}"
end
```

#### Using the get_identities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityResponse>, Integer, Hash)> get_identities_with_http_info(id, opts)

```ruby
begin
  # /links/{id}/identity
  data, status_code, headers = api_instance.get_identities_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling IdentityApi->get_identities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **account_ids** | [**Array&lt;String&gt;**](String.md) | An optional list of account IDs to filter the results. | [optional] |

### Return type

[**IdentityResponse**](IdentityResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

