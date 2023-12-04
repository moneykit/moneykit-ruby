# MoneyKit::CreateLinkSessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings** | [**LinkSessionSettingOverrides**](LinkSessionSettingOverrides.md) |  | [optional] |
| **customer_user** | [**LinkSessionCustomerUser**](LinkSessionCustomerUser.md) |  |  |
| **existing_link_id** | **String** | Supply the existing &#x60;link_id&#x60; if you are asking the user to reconnect this link. | [optional] |
| **institution_id** | **String** | The ID of the institution you want to link to. Providing this will skip the institution         selection step. &#x60;existing_link_id&#x60; will take precedence over this field if both are provided. | [optional] |
| **redirect_uri** | **String** | For Oauth linking, a URI indicating the destination, in your application, where the user should         be sent after authenticating with the institution.  The &#x60;redirect_uri&#x60; should not contain any query parameters,         and it must be pre-approved by MoneyKit during the customer setup process. |  |
| **webhook** | **String** | The destination URL to which any webhooks should be sent. | [optional] |
| **link_tags** | **Array&lt;String&gt;** |  | [optional] |
| **connect_features** | [**MoneyKitConnectFeatures**](MoneyKitConnectFeatures.md) |  | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::CreateLinkSessionRequest.new(
  settings: null,
  customer_user: null,
  existing_link_id: mk_eqkWN34UEoa2NxyALG8pcV,
  institution_id: c7318ff7-257c-490e-8242-03a815b223b7,
  redirect_uri: https://yourdomain.com/oauth.html,
  webhook: https://yourdomain.com/moneykit_webhook,
  link_tags: null,
  connect_features: null
)
```

