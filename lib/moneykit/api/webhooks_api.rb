=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-02-18

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module MoneyKit
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # /webhooks/test/link/{id}
    # Triggers a webhook event for a link, for testing purposes; works only for sandbox links.
    # @param id [String] The unique ID for this link.
    # @param webhook_test_link_request [WebhookTestLinkRequest] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookTestLinkResponse]
    def trigger_test_link_webhook_event(id, webhook_test_link_request, opts = {})
      data, _status_code, _headers = trigger_test_link_webhook_event_with_http_info(id, webhook_test_link_request, opts)
      data
    end

    # /webhooks/test/link/{id}
    # Triggers a webhook event for a link, for testing purposes; works only for sandbox links.
    # @param id [String] The unique ID for this link.
    # @param webhook_test_link_request [WebhookTestLinkRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookTestLinkResponse, Integer, Hash)>] WebhookTestLinkResponse data, response status code and response headers
    def trigger_test_link_webhook_event_with_http_info(id, webhook_test_link_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.trigger_test_link_webhook_event ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhooksApi.trigger_test_link_webhook_event"
      end
      # verify the required parameter 'webhook_test_link_request' is set
      if @api_client.config.client_side_validation && webhook_test_link_request.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_test_link_request' when calling WebhooksApi.trigger_test_link_webhook_event"
      end
      # resource path
      local_var_path = '/webhooks/test/link/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_test_link_request)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookTestLinkResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"WebhooksApi.trigger_test_link_webhook_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#trigger_test_link_webhook_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
