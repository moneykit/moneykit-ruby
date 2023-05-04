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
  class AccountNumbersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # /links/{id}/accounts/numbers
    # Returns a list of open, permissioned accounts associated with a <a href=#tag/Links>link</a>,         including full account and routing numbers for appropriate accounts (such as checking and savings accounts).
    # @param id [String] The unique ID for this link.
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [GetAccountNumbersResponse]
    def get_account_numbers(id, opts = {})
      data, _status_code, _headers = get_account_numbers_with_http_info(id, opts)
      data
    end

    # /links/{id}/accounts/numbers
    # Returns a list of open, permissioned accounts associated with a &lt;a href&#x3D;#tag/Links&gt;link&lt;/a&gt;,         including full account and routing numbers for appropriate accounts (such as checking and savings accounts).
    # @param id [String] The unique ID for this link.
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [Array<(GetAccountNumbersResponse, Integer, Hash)>] GetAccountNumbersResponse data, response status code and response headers
    def get_account_numbers_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountNumbersApi.get_account_numbers ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling AccountNumbersApi.get_account_numbers"
      end

      # resource path
      local_var_path = '/links/{id}/accounts/numbers'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetAccountNumbersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[clientId OAuth2ClientCredentials clientSecret]

      new_options = opts.merge(
        operation: :"AccountNumbersApi.get_account_numbers",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountNumbersApi#get_account_numbers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
