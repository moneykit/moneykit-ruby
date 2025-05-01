# MoneyKit::CreateLinkSessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings** | [**LinkSessionSettingOverrides**](LinkSessionSettingOverrides.md) | If provided, these settings will override your default settings for this session. | [optional] |
| **customer_user** | [**CustomerUser**](CustomerUser.md) | Details about your end user.  These details are used to improve conversion, streamline         the linking flow, and provide enhanced debugging and improved privacy controls for your end user. |  |
| **existing_link_id** | **String** | Supply the existing &#x60;link_id&#x60; if you are asking the user to reconnect or modify this link.         &lt;p&gt;When reconnecting, if new accounts are discovered they will be presented to the user so permission         to access them can be granted (or denied).  Access to previously permitted accounts is not revokable         at this point.         &lt;p&gt;If necessary, MoneyKit may attempt to reconnect the account using a different provider than the link         was originally connected through.  The change in provider is generally seamless.  MoneyKit normalizes         incoming data to minimize provider-specific differences, and we deduplicate new transactions, so         data continuity is generally assured; however, small discrepancies can still occur.         &lt;p&gt;A reconnection cannot change the institution, the customer_user.id, or the country for an         existing link.  These parameters will be silently ignored if &#x60;existing_link_id&#x60; is supplied.         &lt;p&gt;New products can be added to an existing link.  The user will be asked for permission for any added         products.  Existing product settings, however, cannot be changed and will be silently ignored.         &lt;p&gt;The &#x60;webhook&#x60; for an existing link **can** be changed, and the existing webhook will be **removed** if         the &#x60;webhook&#x60; parameter is omitted, so you should supply the &#x60;webhook&#x60; URL if you want to receive         webhook events for the reconnected link.         &lt;p&gt;Similarly, a reconnected link will be assigned whatever &#x60;link_tags&#x60; are supplied, and existing tags will         be removed if &#x60;link_tags&#x60; is omitted, so you should supply the &#x60;link_tags&#x60; you want the link to have, if any.          | [optional] |
| **institution_id** | **String** | The ID of the institution you want to link to. Providing this will skip the institution         selection step. This field is ignored if &#x60;existing_link_id&#x60; is provided. | [optional] |
| **redirect_uri** | **String** | For Oauth linking, a URI indicating the destination, in your application, where the user should         be sent after authenticating with the institution.  The &#x60;redirect_uri&#x60; should not contain any query parameters,         and its protocol://host[:port]/ must be listed in         your &lt;a href&#x3D;https://dashboard.moneykit.com/settings/company/oauth&gt;dashboard settings&lt;/a&gt;. |  |
| **webhook** | **String** | The destination URL to which any webhooks should be sent. | [optional] |
| **link_tags** | **Array&lt;String&gt;** | You can supply one or more arbitrary strings as tags to describe this link. Tags must be under 100 characters in length, and begin with an alphanumeric character. | [optional] |
| **connect_features** | [**MoneyKitConnectFeatures**](MoneyKitConnectFeatures.md) | Enables optional testing and UI features. | [optional] |
| **custom_sandbox_data** | [**CustomSandboxData**](CustomSandboxData.md) | If provided, will allow custom static data to be returned on Credentials Bank in Sandbox mode, using the user &#x60;user_custom&#x60;. | [optional] |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::CreateLinkSessionRequest.new(
  settings: null,
  customer_user: null,
  existing_link_id: null,
  institution_id: null,
  redirect_uri: null,
  webhook: null,
  link_tags: null,
  connect_features: null,
  custom_sandbox_data: null
)
```

