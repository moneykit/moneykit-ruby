=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-02-18

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'date'
require 'time'

module MoneyKit
  class Provider
    MONEYKIT = "moneykit".freeze
    FINICITY = "finicity".freeze
    PLAID = "plaid".freeze
    YODLEE = "yodlee".freeze
    MX = "mx".freeze
    AKOYA = "akoya".freeze
    SOPHTRON = "sophtron".freeze

    def self.all_vars
      @all_vars ||= [MONEYKIT, FINICITY, PLAID, YODLEE, MX, AKOYA, SOPHTRON].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if Provider.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #Provider"
    end
  end
end
