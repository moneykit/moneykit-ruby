# MoneyKit::InstitutionsApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_institution**](InstitutionsApi.md#get_institution) | **GET** /institutions/{institution_id} | /institutions/{institution_id} |
| [**get_institutions**](InstitutionsApi.md#get_institutions) | **GET** /institutions | /institutions |


## get_institution

> <Institution> get_institution(institution_id)

/institutions/{institution_id}

Fetches details about a single institution.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::InstitutionsApi.new
institution_id = 'chase' # String | The institution ID to fetch.

begin
  # /institutions/{institution_id}
  result = api_instance.get_institution(institution_id)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling InstitutionsApi->get_institution: #{e}"
end
```

#### Using the get_institution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Institution>, Integer, Hash)> get_institution_with_http_info(institution_id)

```ruby
begin
  # /institutions/{institution_id}
  data, status_code, headers = api_instance.get_institution_with_http_info(institution_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Institution>
rescue MoneyKit::ApiError => e
  puts "Error when calling InstitutionsApi->get_institution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **institution_id** | **String** | The institution ID to fetch. |  |

### Return type

[**Institution**](Institution.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_institutions

> <GetInstitutionsResponse> get_institutions(opts)

/institutions

Fetches a list of institutions, optionally filtered by name.  Results are paginated.

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::InstitutionsApi.new
opts = {
  name: 'Chase', # String | If provided, returns only institutions containing this name (wholly or as a prefix).
  featured: true, # Boolean | If true, returns only featured institutions.
  cursor: 'cursor_example', # String | Cursor to fetch the next set of institutions. (You get this value from the previous call to `/institutions`.)
  limit: 56 # Integer | A limit on the number of institutions to be returned.
}

begin
  # /institutions
  result = api_instance.get_institutions(opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling InstitutionsApi->get_institutions: #{e}"
end
```

#### Using the get_institutions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInstitutionsResponse>, Integer, Hash)> get_institutions_with_http_info(opts)

```ruby
begin
  # /institutions
  data, status_code, headers = api_instance.get_institutions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInstitutionsResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling InstitutionsApi->get_institutions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | If provided, returns only institutions containing this name (wholly or as a prefix). | [optional] |
| **featured** | **Boolean** | If true, returns only featured institutions. | [optional][default to false] |
| **cursor** | **String** | Cursor to fetch the next set of institutions. (You get this value from the previous call to &#x60;/institutions&#x60;.) | [optional] |
| **limit** | **Integer** | A limit on the number of institutions to be returned. | [optional][default to 50] |

### Return type

[**GetInstitutionsResponse**](GetInstitutionsResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

