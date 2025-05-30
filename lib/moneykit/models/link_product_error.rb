=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-02-18

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'date'
require 'time'

module MoneyKit
  class LinkProductError
    RATE_LIMIT = "rate_limit".freeze
    AUTH_EXPIRED = "auth_expired".freeze
    NOT_SUPPORTED = "not_supported".freeze
    TIMEOUT = "timeout".freeze
    UNKNOWN = "unknown".freeze
    NO_ACCOUNTS = "no_accounts".freeze
    INSTITUTION_ERROR = "institution_error".freeze
    NO_PERMISSION = "no_permission".freeze

    def self.all_vars
      @all_vars ||= [RATE_LIMIT, AUTH_EXPIRED, NOT_SUPPORTED, TIMEOUT, UNKNOWN, NO_ACCOUNTS, INSTITUTION_ERROR, NO_PERMISSION].freeze
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
      return value if LinkProductError.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #LinkProductError"
    end
  end
end
