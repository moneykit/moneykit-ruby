=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for MoneyKit::LinkSessionErrorInvalidTokenExchange
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe MoneyKit::LinkSessionErrorInvalidTokenExchange do
  let(:instance) { MoneyKit::LinkSessionErrorInvalidTokenExchange.new }

  describe 'test an instance of LinkSessionErrorInvalidTokenExchange' do
    it 'should create an instance of LinkSessionErrorInvalidTokenExchange' do
      # uncomment below to test the instance creation
      # expect(instance).to be_instance_of(MoneyKit::LinkSessionErrorInvalidTokenExchange)
    end
  end

  describe 'test attribute "error_code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["link_session_error.invalid_token_exchange"])
      # validator.allowable_values.each do |value|
      #   expect { instance.error_code = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "error_message"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "documentation_url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
