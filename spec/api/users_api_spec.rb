=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MoneyKit::UsersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @api_instance = MoneyKit::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@api_instance).to be_instance_of(MoneyKit::UsersApi)
    end
  end

  # unit tests for get_user_accounts
  # /users/{id}/accounts
  # Fetches all accounts belonging to a &lt;a href&#x3D;#operation/get_user_accounts&gt;user&lt;/a&gt;.
  # @param id The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :account_id If present, filters results to accounts matching the given IDs.
  # @option opts [Array<String>] :institution_id If present, filters results to accounts at institutions matching the given IDs.
  # @option opts [String] :moneykit_version 
  # @return [GetUserAccountsResponse]
  describe 'get_user_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user_links
  # /users/{id}/links
  # Fetches all links belonging to a &lt;a href&#x3D;#operation/get_user_accounts&gt;user&lt;/a&gt;.
  # @param id The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :moneykit_version 
  # @return [GetUserLinksResponse]
  describe 'get_user_links test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user_transactions
  # /users/{id}/transactions
  # Fetches transactions for a &lt;a href&#x3D;#operation/get_user_accounts&gt;user&lt;/a&gt;.     &lt;p&gt;This endpoint fetches all transactions for a user across all of their links.  You can use it to retrieve     transactions from any or all accounts at once, regardless of which institution they belong to.
  # @param id The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;#operation/create_link_session&gt;/link-session&lt;/a&gt; to create any link for this user.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<TransactionTypeFilter>] :transaction_type 
  # @option opts [Array<String>] :category 
  # @option opts [Array<String>] :account_id If present, filters results to transactions in accounts matching the given IDs.
  # @option opts [Array<String>] :institution_id If present, filters results to transactions at institutions matching the given IDs.
  # @option opts [Integer] :page The page number to return.
  # @option opts [Integer] :size The number of items to return per page.
  # @option opts [String] :start_date The earliest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to 90 days before the &#x60;end_date&#x60;.             &lt;p&gt;If you want to retrieve **all** transactions, use &#x60;1900-01-01&#x60;.
  # @option opts [String] :end_date The latest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to today.
  # @option opts [String] :moneykit_version 
  # @return [GetUserTransactionsResponse]
  describe 'get_user_transactions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end