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
gem 'moneykit', '~> 0.1.4'
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'moneykit'

# Setup authorization
MoneyKit.configure do |config|
  # Defaults to MoneyKit-Version: 2023-02-18
  # Configure Bearer authorization
  config.host = ENV['MONEYKIT_URL'] || 'https://api.moneykit.com'
end

begin
  #/auth/token
  access_token_api = MoneyKit::AccessTokenApi.new
  response = access_token_api.generate_access_token(
      {
        grant_type: 'client_credentials',
        client_id: ENV['MONEYKIT_CLIENT_ID'],
        client_secret: ENV['MONEYKIT_CLIENT_SECRET']
      }
    )

  MoneyKit.configure do |config|
    config.access_token = response.access_token
  end
rescue MoneyKit::ApiError => e
  puts "Exception when calling AccessTokenApi->generate_access_token: #{e}"
end
```

## Examples

See our [Examples repository](https://github.com/moneykit/examples) for more complete example projects.

### Create a Link Session

```ruby
require 'moneykit'

link_session_api = MoneyKit::LinkSessionApi.new
response = link_session_api.create_link_session(
  MoneyKit::CreateLinkSessionRequest.new(
    {
      customer_user: { id: user.uuid },
      redirect_uri: 'http://localhost:3000',
    }
  )
)

link_session_token = response.link_session_token
```

### Exchange token for a Link id

```ruby
require 'moneykit'

exchangeable_token = 'TOKEN'

link_session_api = MoneyKit::LinkSessionApi.new
response = link_session_api.exchange_token(
  MoneyKit::ExchangeTokenRequest.new({ exchangeable_token: exchangeable_token })
)

link_id = response.link_id
institution_id = response.link.institution_id
```

### Disconnect link

```ruby
require 'moneykit'

link_id = 'LINK_ID'

links_api = MoneyKit::LinksApi.new
links_api.disconnect(link_id)
```

### Fetch accounts

```ruby
require 'moneykit'

link_id = 'LINK_ID'

accounts_api = MoneyKit::AccountsApi.new
response = accounts_api.get_accounts(link_id)

accounts = response.accounts
```
