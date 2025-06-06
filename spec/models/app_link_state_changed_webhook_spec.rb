=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-02-18

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for MoneyKit::AppLinkStateChangedWebhook
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe MoneyKit::AppLinkStateChangedWebhook do
  let(:instance) { MoneyKit::AppLinkStateChangedWebhook.new }

  describe 'test an instance of AppLinkStateChangedWebhook' do
    it 'should create an instance of AppLinkStateChangedWebhook' do
      # uncomment below to test the instance creation
      # expect(instance).to be_instance_of(MoneyKit::AppLinkStateChangedWebhook)
    end
  end

  describe 'test attribute "webhook_major_version"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', [1])
      # validator.allowable_values.each do |value|
      #   expect { instance.webhook_major_version = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "webhook_minor_version"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', [0])
      # validator.allowable_values.each do |value|
      #   expect { instance.webhook_minor_version = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "webhook_idempotency_key"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "webhook_timestamp"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "link_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "link_tags"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "webhook_event"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["link.state_changed"])
      # validator.allowable_values.each do |value|
      #   expect { instance.webhook_event = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "state"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "error"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "error_message"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
