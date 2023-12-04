=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'cgi'

module MoneyKit
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # /users/{id}/accounts
    # Fetches all accounts belonging to a <a href=#operation/get_user_accounts>user</a>.
    # @param id [String] The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :account_id If present, filters results to accounts matching the given IDs.
    # @option opts [Array<String>] :institution_id If present, filters results to accounts at institutions matching the given IDs.
    # @option opts [String] :moneykit_version  (default to '2023-02-18')
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
    # @option opts [String] :moneykit_version  (default to '2023-02-18')
    # @return [Array<(GetUserAccountsResponse, Integer, Hash)>] GetUserAccountsResponse data, response status code and response headers
    def get_user_accounts_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user_accounts ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get_user_accounts"
      end
      # resource path
      local_var_path = '/users/{id}/accounts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = @api_client.build_collection_param(opts[:'account_id'], :multi) if !opts[:'account_id'].nil?
      query_params[:'institution_id'] = @api_client.build_collection_param(opts[:'institution_id'], :multi) if !opts[:'institution_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'moneykit-version'] = opts[:'moneykit_version'] if !opts[:'moneykit_version'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetUserAccountsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.get_user_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # /users/{id}/links
    # Fetches all links belonging to a <a href=#operation/get_user_accounts>user</a>.
    # @param id [String] The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :moneykit_version  (default to '2023-02-18')
    # @return [GetUserLinksResponse]
    def get_user_links(id, opts = {})
      data, _status_code, _headers = get_user_links_with_http_info(id, opts)
      data
    end

    # /users/{id}/links
    # Fetches all links belonging to a &lt;a href&#x3D;#operation/get_user_accounts&gt;user&lt;/a&gt;.
    # @param id [String] The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :moneykit_version  (default to '2023-02-18')
    # @return [Array<(GetUserLinksResponse, Integer, Hash)>] GetUserLinksResponse data, response status code and response headers
    def get_user_links_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user_links ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get_user_links"
      end
      # resource path
      local_var_path = '/users/{id}/links'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'moneykit-version'] = opts[:'moneykit_version'] if !opts[:'moneykit_version'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetUserLinksResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.get_user_links",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # /users/{id}/transactions
    # Fetches transactions for a <a href=#operation/get_user_accounts>user</a>.     <p>This endpoint fetches all transactions for a user across all of their links.  You can use it to retrieve     transactions from any or all accounts at once, regardless of which institution they belong to.
    # @param id [String] The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<TransactionTypeFilter>] :transaction_type 
    # @option opts [Array<String>] :category 
    # @option opts [Array<String>] :account_id If present, filters results to transactions in accounts matching the given IDs.
    # @option opts [Array<String>] :institution_id If present, filters results to transactions at institutions matching the given IDs.
    # @option opts [Integer] :page The page number to return. (default to 1)
    # @option opts [Integer] :size The number of items to return per page. (default to 50)
    # @option opts [String] :start_date The earliest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to 90 days before the &#x60;end_date&#x60;.             &lt;p&gt;If you want to retrieve **all** transactions, use &#x60;1900-01-01&#x60;.
    # @option opts [String] :end_date The latest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to today.
    # @option opts [String] :moneykit_version  (default to '2023-02-18')
    # @return [GetUserTransactionsResponse]
    def get_user_transactions(id, opts = {})
      data, _status_code, _headers = get_user_transactions_with_http_info(id, opts)
      data
    end

    # /users/{id}/transactions
    # Fetches transactions for a &lt;a href&#x3D;#operation/get_user_accounts&gt;user&lt;/a&gt;.     &lt;p&gt;This endpoint fetches all transactions for a user across all of their links.  You can use it to retrieve     transactions from any or all accounts at once, regardless of which institution they belong to.
    # @param id [String] The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<TransactionTypeFilter>] :transaction_type 
    # @option opts [Array<String>] :category 
    # @option opts [Array<String>] :account_id If present, filters results to transactions in accounts matching the given IDs.
    # @option opts [Array<String>] :institution_id If present, filters results to transactions at institutions matching the given IDs.
    # @option opts [Integer] :page The page number to return. (default to 1)
    # @option opts [Integer] :size The number of items to return per page. (default to 50)
    # @option opts [String] :start_date The earliest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to 90 days before the &#x60;end_date&#x60;.             &lt;p&gt;If you want to retrieve **all** transactions, use &#x60;1900-01-01&#x60;.
    # @option opts [String] :end_date The latest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to today.
    # @option opts [String] :moneykit_version  (default to '2023-02-18')
    # @return [Array<(GetUserTransactionsResponse, Integer, Hash)>] GetUserTransactionsResponse data, response status code and response headers
    def get_user_transactions_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user_transactions ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get_user_transactions"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling UsersApi.get_user_transactions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'size'].nil? && opts[:'size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"size"]" when calling UsersApi.get_user_transactions, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'size'].nil? && opts[:'size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"size"]" when calling UsersApi.get_user_transactions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/users/{id}/transactions'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'transaction_type'] = @api_client.build_collection_param(opts[:'transaction_type'], :multi) if !opts[:'transaction_type'].nil?
      query_params[:'category'] = @api_client.build_collection_param(opts[:'category'], :multi) if !opts[:'category'].nil?
      query_params[:'account_id'] = @api_client.build_collection_param(opts[:'account_id'], :multi) if !opts[:'account_id'].nil?
      query_params[:'institution_id'] = @api_client.build_collection_param(opts[:'institution_id'], :multi) if !opts[:'institution_id'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'moneykit-version'] = opts[:'moneykit_version'] if !opts[:'moneykit_version'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetUserTransactionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.get_user_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
