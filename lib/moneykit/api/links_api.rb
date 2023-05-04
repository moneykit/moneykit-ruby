# #MoneyKit API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 0.1.0
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 6.5.0
#

require 'cgi'

module MoneyKit
  class LinksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # /links/{id}
    # Deletes this link and disables its access token.         <p>After deletion, the link id and access token are no longer valid and cannot be used to access any data         that was associated with it.
    # @param id [String] The unique ID for this link.
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [nil]
    def disconnect(id, opts = {})
      disconnect_with_http_info(id, opts)
      nil
    end

    # /links/{id}
    # Deletes this link and disables its access token.         &lt;p&gt;After deletion, the link id and access token are no longer valid and cannot be used to access any data         that was associated with it.
    # @param id [String] The unique ID for this link.
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def disconnect_with_http_info(id, opts = {})
      @api_client.config.logger.debug 'Calling API: LinksApi.disconnect ...' if @api_client.config.debugging
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling LinksApi.disconnect"
      end

      # resource path
      local_var_path = '/links/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'moneykit-version'] = opts[:moneykit_version] unless opts[:moneykit_version].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[clientId OAuth2ClientCredentials clientSecret]

      new_options = opts.merge(
        operation: :"LinksApi.disconnect",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinksApi#disconnect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # /links/{id}
    # Fetches details about a link.
    # @param id [String] The unique ID for this link.
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [LinkResponse]
    def get_link(id, opts = {})
      data, _status_code, _headers = get_link_with_http_info(id, opts)
      data
    end

    # /links/{id}
    # Fetches details about a link.
    # @param id [String] The unique ID for this link.
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [Array<(LinkResponse, Integer, Hash)>] LinkResponse data, response status code and response headers
    def get_link_with_http_info(id, opts = {})
      @api_client.config.logger.debug 'Calling API: LinksApi.get_link ...' if @api_client.config.debugging
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling LinksApi.get_link"
      end

      # resource path
      local_var_path = '/links/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'moneykit-version'] = opts[:moneykit_version] unless opts[:moneykit_version].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LinkResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[clientId OAuth2ClientCredentials clientSecret]

      new_options = opts.merge(
        operation: :"LinksApi.get_link",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinksApi#get_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # /users/{id}/links
    # Fetches all links belonging to a <a href=#operation/get_user_accounts>user</a>.
    # @param id [String] The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [GetUserLinksResponse]
    def get_user_links(id, opts = {})
      data, _status_code, _headers = get_user_links_with_http_info(id, opts)
      data
    end

    # /users/{id}/links
    # Fetches all links belonging to a &lt;a href&#x3D;#operation/get_user_accounts&gt;user&lt;/a&gt;.
    # @param id [String] The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [Array<(GetUserLinksResponse, Integer, Hash)>] GetUserLinksResponse data, response status code and response headers
    def get_user_links_with_http_info(id, opts = {})
      @api_client.config.logger.debug 'Calling API: LinksApi.get_user_links ...' if @api_client.config.debugging
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling LinksApi.get_user_links"
      end

      # resource path
      local_var_path = '/users/{id}/links'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'moneykit-version'] = opts[:moneykit_version] unless opts[:moneykit_version].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetUserLinksResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[clientId OAuth2ClientCredentials clientSecret]

      new_options = opts.merge(
        operation: :"LinksApi.get_user_links",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinksApi#get_user_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # /links/{id}
    # Updates the link configuration.
    # @param id [String] The unique ID for this link.
    # @param update_link_request [UpdateLinkRequest]
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [LinkResponse]
    def update_link(id, update_link_request, opts = {})
      data, _status_code, _headers = update_link_with_http_info(id, update_link_request, opts)
      data
    end

    # /links/{id}
    # Updates the link configuration.
    # @param id [String] The unique ID for this link.
    # @param update_link_request [UpdateLinkRequest]
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [Array<(LinkResponse, Integer, Hash)>] LinkResponse data, response status code and response headers
    def update_link_with_http_info(id, update_link_request, opts = {})
      @api_client.config.logger.debug 'Calling API: LinksApi.update_link ...' if @api_client.config.debugging
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling LinksApi.update_link"
      end
      # verify the required parameter 'update_link_request' is set
      if @api_client.config.client_side_validation && update_link_request.nil?
        raise ArgumentError, "Missing the required parameter 'update_link_request' when calling LinksApi.update_link"
      end

      # resource path
      local_var_path = '/links/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      header_params['Content-Type'] = content_type unless content_type.nil?
      header_params[:'moneykit-version'] = opts[:moneykit_version] unless opts[:moneykit_version].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_link_request)

      # return_type
      return_type = opts[:debug_return_type] || 'LinkResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[clientId OAuth2ClientCredentials clientSecret]

      new_options = opts.merge(
        operation: :"LinksApi.update_link",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinksApi#update_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end