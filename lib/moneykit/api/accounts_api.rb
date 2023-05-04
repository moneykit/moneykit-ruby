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
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # /links/{id}/accounts/{account_id}
    # Fetches a single account associated with a <a href=#tag/Links>link</a>.
    # @param id [String] The unique ID for this link.
    # @param account_id [String] The account ID to fetch.
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [GetAccountResponse]
    def get_account(id, account_id, opts = {})
      data, _status_code, _headers = get_account_with_http_info(id, account_id, opts)
      data
    end

    # /links/{id}/accounts/{account_id}
    # Fetches a single account associated with a &lt;a href&#x3D;#tag/Links&gt;link&lt;/a&gt;.
    # @param id [String] The unique ID for this link.
    # @param account_id [String] The account ID to fetch.
    # @param [Hash] opts the optional parameters
    # @option opts [SupportedVersion] :moneykit_version
    # @return [Array<(GetAccountResponse, Integer, Hash)>] GetAccountResponse data, response status code and response headers
    def get_account_with_http_info(id, account_id, opts = {})
      @api_client.config.logger.debug 'Calling API: AccountsApi.get_account ...' if @api_client.config.debugging
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.get_account"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        raise ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.get_account"
      end

      # resource path
      local_var_path = '/links/{id}/accounts/{account_id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub(
        '{' + 'account_id' + '}', CGI.escape(account_id.to_s)
      )

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
      return_type = opts[:debug_return_type] || 'GetAccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[clientId OAuth2ClientCredentials clientSecret]

      new_options = opts.merge(
        operation: :"AccountsApi.get_account",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
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
      @api_client.config.logger.debug 'Calling API: AccountsApi.get_account_numbers ...' if @api_client.config.debugging
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.get_account_numbers"
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
        operation: :"AccountsApi.get_account_numbers",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_account_numbers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # /links/{id}/accounts
    # Returns a list of open, permissioned accounts associated with a <a href=#tag/Links>link</a>.
    # @param id [String] The unique ID for this link.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :account_ids An optional list of account IDs to filter the results.
    # @option opts [SupportedVersion] :moneykit_version
    # @return [GetAccountsResponse]
    def get_accounts(id, opts = {})
      data, _status_code, _headers = get_accounts_with_http_info(id, opts)
      data
    end

    # /links/{id}/accounts
    # Returns a list of open, permissioned accounts associated with a &lt;a href&#x3D;#tag/Links&gt;link&lt;/a&gt;.
    # @param id [String] The unique ID for this link.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :account_ids An optional list of account IDs to filter the results.
    # @option opts [SupportedVersion] :moneykit_version
    # @return [Array<(GetAccountsResponse, Integer, Hash)>] GetAccountsResponse data, response status code and response headers
    def get_accounts_with_http_info(id, opts = {})
      @api_client.config.logger.debug 'Calling API: AccountsApi.get_accounts ...' if @api_client.config.debugging
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.get_accounts"
      end

      # resource path
      local_var_path = '/links/{id}/accounts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      unless opts[:account_ids].nil?
        query_params[:account_ids] =
          @api_client.build_collection_param(opts[:account_ids], :multi)
      end

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
      return_type = opts[:debug_return_type] || 'GetAccountsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[clientId OAuth2ClientCredentials clientSecret]

      new_options = opts.merge(
        operation: :"AccountsApi.get_accounts",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # /users/{id}/accounts
    # Fetches all accounts belonging to a <a href=#operation/get_user_accounts>user</a>.
    # @param id [String] The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :account_id If present, filters results to accounts matching the given IDs.
    # @option opts [Array<String>] :institution_id If present, filters results to accounts at institutions matching the given IDs.
    # @option opts [SupportedVersion] :moneykit_version
    # @return [GetUserAccountsResponse]
    def get_user_accounts(id, opts = {})
      data, _status_code, _headers = get_user_accounts_with_http_info(id, opts)
      data
    end

    # /users/{id}/accounts
    # Fetches all accounts belonging to a &lt;a href&#x3D;#operation/get_user_accounts&gt;user&lt;/a&gt;.
    # @param id [String] The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :account_id If present, filters results to accounts matching the given IDs.
    # @option opts [Array<String>] :institution_id If present, filters results to accounts at institutions matching the given IDs.
    # @option opts [SupportedVersion] :moneykit_version
    # @return [Array<(GetUserAccountsResponse, Integer, Hash)>] GetUserAccountsResponse data, response status code and response headers
    def get_user_accounts_with_http_info(id, opts = {})
      @api_client.config.logger.debug 'Calling API: AccountsApi.get_user_accounts ...' if @api_client.config.debugging
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.get_user_accounts"
      end

      # resource path
      local_var_path = '/users/{id}/accounts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      unless opts[:account_id].nil?
        query_params[:account_id] =
          @api_client.build_collection_param(opts[:account_id], :multi)
      end
      unless opts[:institution_id].nil?
        query_params[:institution_id] =
          @api_client.build_collection_param(opts[:institution_id], :multi)
      end

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
      return_type = opts[:debug_return_type] || 'GetUserAccountsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[clientId OAuth2ClientCredentials clientSecret]

      new_options = opts.merge(
        operation: :"AccountsApi.get_user_accounts",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_user_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end