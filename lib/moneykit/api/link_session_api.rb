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
  class LinkSessionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # /link-session
    # This endpoint is to be called by your back end, to establish a new link session         for creating a link to your end user's institution.
    # @param create_link_session_request [CreateLinkSessionRequest]
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [CreateLinkSessionResponse]
    def create_link_session(create_link_session_request, opts = {})
      data, _status_code, _headers = create_link_session_with_http_info(create_link_session_request, opts)
      data
    end

    # /link-session
    # This endpoint is to be called by your back end, to establish a new link session         for creating a link to your end user&#39;s institution.
    # @param create_link_session_request [CreateLinkSessionRequest]
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [Array<(CreateLinkSessionResponse, Integer, Hash)>] CreateLinkSessionResponse data, response status code and response headers
    def create_link_session_with_http_info(create_link_session_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinkSessionApi.create_link_session ...'
      end
      # verify the required parameter 'create_link_session_request' is set
      if @api_client.config.client_side_validation && create_link_session_request.nil?
        raise ArgumentError,
              "Missing the required parameter 'create_link_session_request' when calling LinkSessionApi.create_link_session"
      end

      # resource path
      local_var_path = '/link-session'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_link_session_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateLinkSessionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[clientId OAuth2ClientCredentials clientSecret]

      new_options = opts.merge(
        operation: :"LinkSessionApi.create_link_session",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinkSessionApi#create_link_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # /link-session/exchange-token
    # After the end user has successfully completed the linking process, your back end     calls this endpoint to exchange the token received by your front end for a`link_id` that can be used to access     the link's data.
    # @param exchange_token_request [ExchangeTokenRequest]
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [ExchangeTokenResponse]
    def exchange_token(exchange_token_request, opts = {})
      data, _status_code, _headers = exchange_token_with_http_info(exchange_token_request, opts)
      data
    end

    # /link-session/exchange-token
    # After the end user has successfully completed the linking process, your back end     calls this endpoint to exchange the token received by your front end for a&#x60;link_id&#x60; that can be used to access     the link&#39;s data.
    # @param exchange_token_request [ExchangeTokenRequest]
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [Array<(ExchangeTokenResponse, Integer, Hash)>] ExchangeTokenResponse data, response status code and response headers
    def exchange_token_with_http_info(exchange_token_request, opts = {})
      @api_client.config.logger.debug 'Calling API: LinkSessionApi.exchange_token ...' if @api_client.config.debugging
      # verify the required parameter 'exchange_token_request' is set
      if @api_client.config.client_side_validation && exchange_token_request.nil?
        raise ArgumentError,
              "Missing the required parameter 'exchange_token_request' when calling LinkSessionApi.exchange_token"
      end

      # resource path
      local_var_path = '/link-session/exchange-token'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(exchange_token_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ExchangeTokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[clientId OAuth2ClientCredentials clientSecret]

      new_options = opts.merge(
        operation: :"LinkSessionApi.exchange_token",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinkSessionApi#exchange_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
