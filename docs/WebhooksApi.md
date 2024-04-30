# MoneyKit::WebhooksApi

All URIs are relative to *https://api.moneykit.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**trigger_test_link_webhook_event**](WebhooksApi.md#trigger_test_link_webhook_event) | **POST** /webhooks/test/link/{id} | Trigger a test webhook event for a link (Sandbox only). |


## trigger_test_link_webhook_event

> <WebhookTestLinkResponse> trigger_test_link_webhook_event(id, webhook_test_link_request)

Trigger a test webhook event for a link (Sandbox only).

### Examples

```ruby
require 'time'
require 'moneykit'
# setup authorization
MoneyKit.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MoneyKit::WebhooksApi.new
id = 'id_example' # String | The unique ID for this link.
webhook_test_link_request = MoneyKit::WebhookTestLinkRequest.new({webhook_event: MoneyKit::WebhookLinkTestEvent::LINK_STATE_CHANGED, webhook_idempotency_key: 'webhook_idempotency_key_example'}) # WebhookTestLinkRequest | 

begin
  # Trigger a test webhook event for a link (Sandbox only).
  result = api_instance.trigger_test_link_webhook_event(id, webhook_test_link_request)
  p result
rescue MoneyKit::ApiError => e
  puts "Error when calling WebhooksApi->trigger_test_link_webhook_event: #{e}"
end
```

#### Using the trigger_test_link_webhook_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookTestLinkResponse>, Integer, Hash)> trigger_test_link_webhook_event_with_http_info(id, webhook_test_link_request)

```ruby
begin
  # Trigger a test webhook event for a link (Sandbox only).
  data, status_code, headers = api_instance.trigger_test_link_webhook_event_with_http_info(id, webhook_test_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookTestLinkResponse>
rescue MoneyKit::ApiError => e
  puts "Error when calling WebhooksApi->trigger_test_link_webhook_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this link. |  |
| **webhook_test_link_request** | [**WebhookTestLinkRequest**](WebhookTestLinkRequest.md) |  |  |

### Return type

[**WebhookTestLinkResponse**](WebhookTestLinkResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

