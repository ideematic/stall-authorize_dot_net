# Stall::AuthorizeDotNet

This gem allows integrating your [Stall](https://github.com/stall-rails/stall)
e-commerce app with the Authorize.net online payment gateway solution.

This gem is just the glue between [Stall](https://github.com/stall-rails/stall)
and the [offsite_payments](https://github.com/activemerchant/offsite_payments/) gem.

## Installation

Add this line to your application's Gemfile :

```ruby
gem 'stall-authorize_dot_net'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stall-authorize_dot_net

Then use the install generator to copy the config template file :

    $ rails generator stall:authorize_dot_net:install


## Usage

You first need to configure the gateway by filling the required variables in
that were added to the stall config initialize.

By default, it is configured to fetch from the variables from the environment,
so ideally, just create the following env vars :

- `AUTHORIZE_NET_ACCOUNT`
- `AUTHORIZE_NET_TRANSACTION_KEY`

Restart your server, and you should now be able to use the Authorize.net payment
gateway in test mode.

When you're ready to switch to production, juste set the following environment
variable :

- `AUTHORIZE_NET_PRODUCTION_MODE=true`

Just like the other settings, you can change the way it's configured in the
stall initializer file.

### Automatic response URL

You need to provide a payment response URL to your bank which will be :

```text
<http|https>://<YOUR_DOMAIN>/authorize_dot_net/payment/notify
```

You can find the route with :

```bash
rake routes | grep payment/notify
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/stall-rails/stall-authorize_dot_net.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

