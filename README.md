# MoneyKit

MoneyKit is the next generation connection for the world's money.

This is an autogenerated python SDK for OpenFGA. It provides a wrapper around the [MoneyKit API definition](https://docs.moneykit.com).

## Installation

### Bundler

Use `bundle add`
```shell
bundle add moneykit.gemspec
```

or add the following to your `Gemfile`

```
gem 'moneykit', '~> 0.0.1'
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'moneykit'

# Setup authorization
MoneyKit.configure do |config|
  # Configure Bearer authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure faraday connection
  config.configure_faraday_connection { |connection| 'YOUR CONNECTION CONFIG PROC' }
end

api_instance = MoneyKit::AccessTokenApi.new
opts = {
  moneykit_version: 'moneykit_version_example', # String | 
  grant_type: 'grant_type_example', # String | Token grant type. Only `client_credentials` supported.
  scope: 'scope_example', # String | Actions to be allowed for this token, given as one or more strings separated by spaces.             If omitted, all actions allowed for your application will be granted to this token.
  client_id: 'client_id_example', # String | Your application's MoneyKit client ID.
  client_secret: 'client_secret_example' # String | Your application's MoneyKit client secret.
}

begin
  #/auth/token
  result = api_instance.generate_access_token(opts)
  p result
rescue MoneyKit::ApiError => e
  puts "Exception when calling AccessTokenApi->generate_access_token: #{e}"
end

```
