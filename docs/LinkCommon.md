# MoneyKit::LinkCommon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** | The unique ID for this link. |  |
| **institution_id** | **String** | The unique ID for the institution this link is connected to. |  |
| **institution_name** | **String** | The institution name this link is connected to. |  |
| **institution_avatar** | **String** | An avatar image for the link&#39;s institution. |  |
| **state** | [**PublicLinkState**](PublicLinkState.md) | The current state of this link.  Links that are not yet connected,         or which require reconnection, will be in one of the non-connected states.  Please note that recently deleted         links can be fetched by this function (and will have a state of &#x60;deleted&#x60;); however, MoneyKit completely         removes deleted links 90 days after deletion, so older deleted links will not be seen after this time. |  |
| **error_code** | [**PublicLinkError**](PublicLinkError.md) | The type of error, if the link is in the &#x60;error&#x60; state.  See &lt;a href&#x3D;/pages/errors&gt;Errors&lt;/a&gt; for an explanation of error codes. | [optional] |
| **last_synced_at** | **Time** | (Deprecated) An ISO-8601 timestamp indicating the last time that the link was updated. | [optional] |
| **provider** | [**Provider**](Provider.md) | The provider that most recently facilitated the creation of this link.  Note that         MoneyKit may switch providers if necessary to provide continuous access to the institution.  Not all providers         are automatically available or usable; provider selection is dynamic and depends on many factors. |  |
| **link_tags** | **Array&lt;String&gt;** | Arbitrary strings used to describe this link. | [optional] |
| **tags** | **Array&lt;String&gt;** | DEPRECATED; use &#x60;link_tags&#x60; instead | [optional] |
| **webhook** | **String** | The webhook url assigned to this link. | [optional] |
| **products** | [**LinkProducts**](LinkProducts.md) | The granted products available for this link. |  |
| **available_products** | [**Array&lt;Product&gt;**](Product.md) | A list of products that could be added to this link.         Products can be added to (and removed from) an existing link by creating a new &lt;a href&#x3D;#operation/create_link_session&gt;link-session&lt;/a&gt;         and supplying the &#x60;existing_link_id&#x60; with a new set of products. |  |

## Example

```ruby
require 'moneykit'

instance = MoneyKit::LinkCommon.new(
  link_id: null,
  institution_id: null,
  institution_name: null,
  institution_avatar: null,
  state: null,
  error_code: null,
  last_synced_at: null,
  provider: null,
  link_tags: null,
  tags: null,
  webhook: null,
  products: null,
  available_products: null
)
```

