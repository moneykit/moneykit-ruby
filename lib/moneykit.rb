=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-02-18

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

# Common files
require 'moneykit/api_client'
require 'moneykit/api_error'
require 'moneykit/version'
require 'moneykit/configuration'

# Models
require 'moneykit/models/api_error_auth_expired_access_token_response'
require 'moneykit/models/api_error_auth_unauthorized_response'
require 'moneykit/models/api_error_rate_limit_exceeded_response'
require 'moneykit/models/account'
require 'moneykit/models/account_balances'
require 'moneykit/models/account_group'
require 'moneykit/models/account_identity'
require 'moneykit/models/account_numbers'
require 'moneykit/models/account_numbers_link_product'
require 'moneykit/models/account_numbers_product_settings'
require 'moneykit/models/account_with_account_numbers'
require 'moneykit/models/accounts_link_product'
require 'moneykit/models/ach_number'
require 'moneykit/models/address'
require 'moneykit/models/bacs_number'
require 'moneykit/models/basic_account_details'
require 'moneykit/models/body'
require 'moneykit/models/country'
require 'moneykit/models/create_link_session_request'
require 'moneykit/models/create_link_session_response'
require 'moneykit/models/currency'
require 'moneykit/models/cursor_pagination'
require 'moneykit/models/customer_app'
require 'moneykit/models/eft_number'
require 'moneykit/models/email'
require 'moneykit/models/exchange_token_request'
require 'moneykit/models/exchange_token_response'
require 'moneykit/models/generate_access_token_response'
require 'moneykit/models/get_account_numbers_response'
require 'moneykit/models/get_account_response'
require 'moneykit/models/get_accounts_response'
require 'moneykit/models/get_holdings_response'
require 'moneykit/models/get_institutions_response'
require 'moneykit/models/get_investment_transactions_response'
require 'moneykit/models/get_transactions_response'
require 'moneykit/models/get_user_accounts_response'
require 'moneykit/models/get_user_links_response'
require 'moneykit/models/get_user_transactions_response'
require 'moneykit/models/http_validation_error'
require 'moneykit/models/holding_response'
require 'moneykit/models/identity_link_product'
require 'moneykit/models/identity_product_settings'
require 'moneykit/models/identity_response'
require 'moneykit/models/institution'
require 'moneykit/models/institution_error_not_found_response'
require 'moneykit/models/international_number'
require 'moneykit/models/introspect_client_response'
require 'moneykit/models/investment_transaction_response'
require 'moneykit/models/investments_link_product'
require 'moneykit/models/investments_product_settings'
require 'moneykit/models/jwk_set'
require 'moneykit/models/link_common'
require 'moneykit/models/link_error'
require 'moneykit/models/link_error_bad_config_response'
require 'moneykit/models/link_error_bad_state_response'
require 'moneykit/models/link_error_deleted_response'
require 'moneykit/models/link_error_forbidden_action_response'
require 'moneykit/models/link_error_not_found_response'
require 'moneykit/models/link_error_unauthorized_access_response'
require 'moneykit/models/link_permission_scope'
require 'moneykit/models/link_permissions'
require 'moneykit/models/link_product_failure_reasons'
require 'moneykit/models/link_product_refresh_webhook'
require 'moneykit/models/link_product_state'
require 'moneykit/models/link_products'
require 'moneykit/models/link_response'
require 'moneykit/models/link_session_customer_user'
require 'moneykit/models/link_session_customer_user_email'
require 'moneykit/models/link_session_customer_user_phone'
require 'moneykit/models/link_session_error_forbidden_config_response'
require 'moneykit/models/link_session_error_invalid_token_exchange'
require 'moneykit/models/link_session_setting_overrides'
require 'moneykit/models/link_state'
require 'moneykit/models/link_state_changed_webhook'
require 'moneykit/models/money_kit_connect_features'
require 'moneykit/models/owner'
require 'moneykit/models/phone_number'
require 'moneykit/models/phone_number_type'
require 'moneykit/models/product'
require 'moneykit/models/products_settings'
require 'moneykit/models/provider'
require 'moneykit/models/refresh_products_request'
require 'moneykit/models/requested_link_permission'
require 'moneykit/models/response401_disconnect_links_id_delete'
require 'moneykit/models/response401_exchange_token_link_session_exchange_token_post'
require 'moneykit/models/response401_get_account_links_id_accounts_account_id_get'
require 'moneykit/models/response401_get_account_numbers_links_id_accounts_numbers_get'
require 'moneykit/models/response401_get_accounts_links_id_accounts_get'
require 'moneykit/models/response401_get_holdings_links_id_investments_holdings_get'
require 'moneykit/models/response401_get_identities_links_id_identity_get'
require 'moneykit/models/response401_get_institution_institutions_institution_id_get'
require 'moneykit/models/response401_get_institutions_institutions_get'
require 'moneykit/models/response401_get_investment_transactions_links_id_investments_transactions_get'
require 'moneykit/models/response401_get_link_links_id_get'
require 'moneykit/models/response401_get_transactions'
require 'moneykit/models/response401_get_transactions_diff_links_id_transactions_sync_get'
require 'moneykit/models/response401_get_user_accounts_users_id_accounts_get'
require 'moneykit/models/response401_get_user_links_users_id_links_get'
require 'moneykit/models/response401_get_user_transactions'
require 'moneykit/models/response401_get_well_known_jwks_well_known_jwks_json_get'
require 'moneykit/models/response401_instrospect_client_auth_introspect_get'
require 'moneykit/models/response401_refresh_products_links_id_products_post'
require 'moneykit/models/response401_reset_login_links_id_reset_post'
require 'moneykit/models/response401_trigger_test_link_webhook_event_webhooks_test_link_id_post'
require 'moneykit/models/response401_update_link_links_id_patch'
require 'moneykit/models/response_handle_link_webhook_event_request_body_webhook_post'
require 'moneykit/models/security_response'
require 'moneykit/models/transaction'
require 'moneykit/models/transaction_diff'
require 'moneykit/models/transaction_sync_response'
require 'moneykit/models/transaction_type'
require 'moneykit/models/transaction_type_filter'
require 'moneykit/models/transaction_updates_available_webhook'
require 'moneykit/models/transactions_link_product'
require 'moneykit/models/transactions_product_settings'
require 'moneykit/models/update_link_request'
require 'moneykit/models/validation_error'
require 'moneykit/models/validation_error_location_inner'
require 'moneykit/models/webhook_link_test_event'
require 'moneykit/models/webhook_test_link_request'
require 'moneykit/models/webhook_test_link_response'

# APIs
require 'moneykit/api/access_token_api'
require 'moneykit/api/account_numbers_api'
require 'moneykit/api/accounts_api'
require 'moneykit/api/identity_api'
require 'moneykit/api/institutions_api'
require 'moneykit/api/investments_api'
require 'moneykit/api/link_session_api'
require 'moneykit/api/links_api'
require 'moneykit/api/products_api'
require 'moneykit/api/transactions_api'
require 'moneykit/api/users_api'
require 'moneykit/api/webhooks_api'

module MoneyKit
  class << self
    # Customize default settings for the SDK using block.
    #   MoneyKit.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
