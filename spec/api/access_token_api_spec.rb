=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MoneyKit::AccessTokenApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccessTokenApi' do
  before do
    # run before each test
    @api_instance = MoneyKit::AccessTokenApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccessTokenApi' do
    it 'should create an instance of AccessTokenApi' do
      expect(@api_instance).to be_instance_of(MoneyKit::AccessTokenApi)
    end
  end

  # unit tests for generate_access_token
  # /auth/token
  # Create a new short-lived access token by validating your &#x60;client_id&#x60; and &#x60;client_secret&#x60;.  The &#x60;access_token&#x60; is to be forwarded with all subsequent requests as &#x60;Authorization: Bearer {access_token}&#x60; HTTP header.  When the token expires you must regenerate your &#x60;access_token&#x60;.  The &#x60;client_id&#x60; and &#x60;client_secret&#x60; can be supplied as POST body parameters, or as a HTTP basic auth header.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :moneykit_version 
  # @option opts [String] :grant_type Token grant type. Only &#x60;client_credentials&#x60; supported.
  # @option opts [String] :scope Actions to be allowed for this token, given as one or more strings separated by spaces.             If omitted, all actions allowed for your application will be granted to this token.
  # @option opts [String] :client_id Your application&#39;s MoneyKit client ID.
  # @option opts [String] :client_secret Your application&#39;s MoneyKit client secret.
  # @return [GenerateAccessTokenResponse]
  describe 'generate_access_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_well_known_jwks
  # JSON Web Key Set
  # The JSON Web Key Set (JWKS) is a set of keys containing the public keys used to verify webhook JSON Web Tokens (JWT) issued by MoneyKit webhooks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :moneykit_version 
  # @return [JWKSet]
  describe 'get_well_known_jwks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for instrospect_client
  # /auth/introspect
  # Get details about the client and application associated with your &#x60;access_token&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :moneykit_version 
  # @return [IntrospectClientResponse]
  describe 'instrospect_client test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
