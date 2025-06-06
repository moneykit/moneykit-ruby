=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-02-18

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MoneyKit::ProductsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProductsApi' do
  before do
    # run before each test
    @api_instance = MoneyKit::ProductsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductsApi' do
    it 'should create an instance of ProductsApi' do
      expect(@api_instance).to be_instance_of(MoneyKit::ProductsApi)
    end
  end

  # unit tests for refresh_products
  # /links/{id}/products
  # Requests an update of the provided products for the link.     This is an asynchronous operation. The response will be a 202 Accepted if the request was successful.     Refreshes are subject to rate limiting.     &lt;br&gt;&lt;br&gt;     &lt;b&gt;Rate Limiting&lt;/b&gt;&lt;br&gt;     &lt;ul&gt;         &lt;li&gt;1 refresh per link per hour for account data&lt;/li&gt;         &lt;li&gt;1 refresh per link per hour for transaction data&lt;/li&gt;         &lt;li&gt;1 refresh per link per day for account numbers&lt;/li&gt;         &lt;li&gt;1 refresh per link per day for identity data&lt;/li&gt;     &lt;/ul&gt;
  # @param id The unique ID for this link.
  # @param refresh_products_request 
  # @param [Hash] opts the optional parameters
  # @return [LinkCommon]
  describe 'refresh_products test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
