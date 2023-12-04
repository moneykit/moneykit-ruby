=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'cgi'

module MoneyKit
  class ProductsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # /links/{id}/products
    # Requests an update of the provided products for the link.     This is an asynchronous operation. The response will be a 202 Accepted if the request was successful.     Refreshes are subject to rate limiting.     <br><br>     <b>Rate Limiting</b><br>     <ul>         <li>1 refresh per link per hour for account data</li>         <li>1 refresh per link per hour for transaction data</li>         <li>1 refresh per link per day for account numbers</li>         <li>1 refresh per link per day for identity data</li>     </ul>
    # @param id [String] The unique ID for this link.
    # @param refresh_products_request [RefreshProductsRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :moneykit_version  (default to '2023-02-18')
    # @return [nil]
    def refresh_products(id, refresh_products_request, opts = {})
      refresh_products_with_http_info(id, refresh_products_request, opts)
      nil
    end

    # /links/{id}/products
    # Requests an update of the provided products for the link.     This is an asynchronous operation. The response will be a 202 Accepted if the request was successful.     Refreshes are subject to rate limiting.     &lt;br&gt;&lt;br&gt;     &lt;b&gt;Rate Limiting&lt;/b&gt;&lt;br&gt;     &lt;ul&gt;         &lt;li&gt;1 refresh per link per hour for account data&lt;/li&gt;         &lt;li&gt;1 refresh per link per hour for transaction data&lt;/li&gt;         &lt;li&gt;1 refresh per link per day for account numbers&lt;/li&gt;         &lt;li&gt;1 refresh per link per day for identity data&lt;/li&gt;     &lt;/ul&gt;
    # @param id [String] The unique ID for this link.
    # @param refresh_products_request [RefreshProductsRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :moneykit_version  (default to '2023-02-18')
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def refresh_products_with_http_info(id, refresh_products_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductsApi.refresh_products ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductsApi.refresh_products"
      end
      # verify the required parameter 'refresh_products_request' is set
      if @api_client.config.client_side_validation && refresh_products_request.nil?
        fail ArgumentError, "Missing the required parameter 'refresh_products_request' when calling ProductsApi.refresh_products"
      end
      # resource path
      local_var_path = '/links/{id}/products'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'moneykit-version'] = opts[:'moneykit_version'] if !opts[:'moneykit_version'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(refresh_products_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ProductsApi.refresh_products",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#refresh_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
