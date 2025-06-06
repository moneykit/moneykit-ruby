=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-02-18

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module MoneyKit
  class InstitutionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # /institutions/{institution_id}
    # Fetches details about a single institution.
    # @param institution_id [String] The institution ID to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Institution]
    def get_institution(institution_id, opts = {})
      data, _status_code, _headers = get_institution_with_http_info(institution_id, opts)
      data
    end

    # /institutions/{institution_id}
    # Fetches details about a single institution.
    # @param institution_id [String] The institution ID to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Institution, Integer, Hash)>] Institution data, response status code and response headers
    def get_institution_with_http_info(institution_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstitutionsApi.get_institution ...'
      end
      # verify the required parameter 'institution_id' is set
      if @api_client.config.client_side_validation && institution_id.nil?
        fail ArgumentError, "Missing the required parameter 'institution_id' when calling InstitutionsApi.get_institution"
      end
      # resource path
      local_var_path = '/institutions/{institution_id}'.sub('{' + 'institution_id' + '}', CGI.escape(institution_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Institution'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"InstitutionsApi.get_institution",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstitutionsApi#get_institution\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # /institutions
    # Fetches a list of institutions, optionally filtered by name.  Results are paginated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name If provided, returns only institutions containing this name (wholly or as a prefix).
    # @option opts [Boolean] :featured If true, returns only featured institutions. (default to false)
    # @option opts [String] :cursor Cursor to fetch the next set of institutions. (You get this value from the previous call to &#x60;/institutions&#x60;.)
    # @option opts [Integer] :limit A limit on the number of institutions to be returned. (default to 50)
    # @return [GetInstitutionsResponse]
    def get_institutions(opts = {})
      data, _status_code, _headers = get_institutions_with_http_info(opts)
      data
    end

    # /institutions
    # Fetches a list of institutions, optionally filtered by name.  Results are paginated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name If provided, returns only institutions containing this name (wholly or as a prefix).
    # @option opts [Boolean] :featured If true, returns only featured institutions. (default to false)
    # @option opts [String] :cursor Cursor to fetch the next set of institutions. (You get this value from the previous call to &#x60;/institutions&#x60;.)
    # @option opts [Integer] :limit A limit on the number of institutions to be returned. (default to 50)
    # @return [Array<(GetInstitutionsResponse, Integer, Hash)>] GetInstitutionsResponse data, response status code and response headers
    def get_institutions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstitutionsApi.get_institutions ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling InstitutionsApi.get_institutions, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling InstitutionsApi.get_institutions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/institutions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'featured'] = opts[:'featured'] if !opts[:'featured'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetInstitutionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"InstitutionsApi.get_institutions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstitutionsApi#get_institutions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
