=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MoneyKit::TransactionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionsApi' do
  before do
    # run before each test
    @api_instance = MoneyKit::TransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionsApi' do
    it 'should create an instance of TransactionsApi' do
      expect(@api_instance).to be_instance_of(MoneyKit::TransactionsApi)
    end
  end

  # unit tests for get_transactions
  # /links/{id}/transactions
  # Returns transactions for the accounts associated with a &lt;a href&#x3D;#tag/Links&gt;link&lt;/a&gt;.  Results are paginated,     and returned in reverse chronological order.     &lt;p&gt;**Note** that this endpoint does **not** trigger a fetch of transactions from the institution; it merely returns     transactions that have already been fetched, either because &#x60;prefetch&#x60; was requested when the link was created,     or because of scheduled or on-demand updates.     &lt;p&gt;MoneyKit checks for updated account data, including transactions, periodically throughout the day, but the     update frequency can vary, depending on the downstream data provider, the institution, and whether one or both     provide webhook-based updates.  **To force a check for updated transactions, you can use the     &lt;a href&#x3D;#operation/refresh_products&gt;/products&lt;/a&gt; endpoint.**     &lt;p&gt;If you have requested prefetch or an on-demand update, you should check the &#x60;refreshed_at&#x60; date     for this product in the returned response, and compare that against the previous &#x60;refreshed_at&#x60; date, which you can     get from any previous response for this or any other account or link request.  If the refreshed_at date has not     increased, then updated data is not yet available.
  # @param id The unique ID for this link.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :account_ids An optional list of account IDs to filter the results.
  # @option opts [Integer] :page The page number to return.
  # @option opts [Integer] :size The number of items to return per page.
  # @option opts [String] :start_date The earliest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to 90 days before the &#x60;end_date&#x60;.             &lt;p&gt;If you want to retrieve **all** transactions, use &#x60;1900-01-01&#x60;.
  # @option opts [String] :end_date The latest date for which data should be returned, formatted as YYYY-MM-DD.             Defaults to today.
  # @option opts [String] :moneykit_version 
  # @return [GetTransactionsResponse]
  describe 'get_transactions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_transactions_diff
  # /links/{id}/transactions/sync
  # Provides a paginated feed of transactions, grouped into &#x60;created&#x60;, &#x60;updated&#x60;, and &#x60;removed&#x60; lists.         &lt;p&gt;Each call will also return a &#x60;next_cursor&#x60; value.  In subsequent calls, include that value to receive         only changes that have occurred since the previous call.         &lt;p&gt;Large numbers of transactions will be paginated, and the &#x60;has_more&#x60; field will be true.  You should         continue calling this endpoint with each new &#x60;next_cursor&#x60; value until &#x60;has_more&#x60; is false.         &lt;p&gt;**Note** that this endpoint does **not** trigger a fetch of transactions from the institution; it merely returns         transactions that have already been fetched, either because &#x60;prefetch&#x60; was requested when the link was created,         or because of scheduled or on-demand updates.         &lt;p&gt;MoneyKit checks for updated account data, including transactions, periodically throughout the day, but the         update frequency can vary, depending on the downstream data provider, the institution, and whether one or both         provide webhook-based updates.         **To force a check for updated transactions, you can use the &lt;a href&#x3D;#operation/refresh_products&gt;/products&lt;/a&gt; endpoint.**         &lt;p&gt;Note also that the &#x60;transactions.updates_available&#x60; webhook will alert you when new data is available.
  # @param id The unique ID for this link.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor A cursor value representing the last update requested. If included, the response will only return         changes after this update. If omitted, a complete history of updates will be returned. This value must be stored         by the client as we do not keep track of customer cursors.
  # @option opts [Integer] :size The number of items to return.
  # @option opts [String] :moneykit_version 
  # @return [TransactionSyncResponse]
  describe 'get_transactions_diff test' do
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