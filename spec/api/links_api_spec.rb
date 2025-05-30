=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-02-18

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MoneyKit::LinksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LinksApi' do
  before do
    # run before each test
    @api_instance = MoneyKit::LinksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LinksApi' do
    it 'should create an instance of LinksApi' do
      expect(@api_instance).to be_instance_of(MoneyKit::LinksApi)
    end
  end

  # unit tests for delete_link
  # /links/{id}
  # Deletes this link and disables its access token.         &lt;p&gt;After deletion, the link id and access token are no longer valid and cannot be used to access any data         that was associated with it.  MoneyKit retains a bare-minimum record of the deleted link for a period         (90 days) after deletion, so that your app can fetch the link by its ID and see that it is deleted;         but after 90 days, the link will be hard-deleted and is no longer accessible in any way.
  # @param id The unique ID for this link.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_link test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_link
  # /links/{id}
  # Fetches details about a link.
  # @param id The unique ID for this link.
  # @param [Hash] opts the optional parameters
  # @return [LinkCommon]
  describe 'get_link test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_links
  # /links
  # Gets the list of all active links.  Active links are those that have been connected and     for which data has been fetched, and which have not been deleted.  The list is cursor-paged; submit the     &#x60;next_cursor&#x60; value to get the next page of links.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor The next_cursor value from the previous batch
  # @option opts [Integer] :limit The number of links per page.
  # @return [GetLinksResponse]
  describe 'get_links test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user_links
  # /users/{id}/links
  # Fetches all links belonging to a &lt;a href&#x3D;#operation/get_user_accounts&gt;user&lt;/a&gt;.
  # @param id The unique ID for this user.  This is the same ID provided         in the call to &lt;a href&#x3D;/api/operation/create_link_session#customer_user-id&gt;link-session&lt;/a&gt; to create any link for this user.
  # @param [Hash] opts the optional parameters
  # @return [GetUserLinksResponse]
  describe 'get_user_links test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for import_link
  # /links/import
  # Creates a new link with pre-populated accounts and (optionally) transactions.  The new link will     be created in an initially &#x60;disconnected&#x60; state, with an error code of &#x60;auth_expired&#x60;, but all data will be available.     As with any disconnected link, the imported link can then be reconnected at any time by starting a new     &lt;a href&#x3D;#operation/create_link_session&gt;link-session&lt;/a&gt; with &#x60;existing_link_id&#x60; set to the link&#39;s &#x60;link_id&#x60;.  Note that the link can be     reconnected using any suitable provider.     &lt;p&gt;     The imported data has a maximum size limit of 1MB, which corresponds very roughly to about 4000 transactions.     The data is processed synchronously, so you can expect a delay of up to 10 seconds before the response is     transmitted.  For large imports, you should set generous HTTP read timeouts to avoid disconnecting before the     import is complete.  Alternatively, you can import only accounts, and then use the &lt;a href&#x3D;/api/operation/import_transactions&gt;import-transactions&lt;/a&gt;     endpoint to add transactions in batches.
  # @param import_link_request 
  # @param [Hash] opts the optional parameters
  # @return [LinkCommon]
  describe 'import_link test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for import_transactions
  # /links/{id}/import/transactions
  # Adds transactions to a link imported with the &lt;a href&#x3D;/api/operation/import_link&gt;import&lt;/a&gt; endpoint.  The imported data has a     maximum size limit of 1MB, which corresponds very roughly to about 4000 transactions.  The data is processed     synchronously, so you can expect a delay of up to 10 seconds before the response is transmitted.
  # @param id The unique ID for this link.
  # @param import_transactions_request 
  # @param [Hash] opts the optional parameters
  # @return [LinkCommon]
  describe 'import_transactions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for reset_link
  # /links/{id}/reset
  # Forcibly disconnects a link, for testing purposes.
  # @param id The unique ID for this link.
  # @param [Hash] opts the optional parameters
  # @return [LinkCommon]
  describe 'reset_link test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_link
  # /links/{id}
  # Updates the link configuration.
  # @param id The unique ID for this link.
  # @param update_link_request 
  # @param [Hash] opts the optional parameters
  # @return [LinkCommon]
  describe 'update_link test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
