  # Authorize.net payment gateway configuration
  # Fill with the informations provided by your Authorize.net account
  #
  config.payment.authorize_dot_net do |authorize_dot_net|
    # Your authorize.net account number
    authorize_dot_net.account = ENV['AUTHORIZE_NET_ACCOUNT']
    # Your authorize.net transaction key
    authorize_dot_net.transaction_key = ENV['AUTHORIZE_NET_TRANSACTION_KEY']
    # The authorize.net md5 hash filled in your customer interface to
    # authenticate incoming gateway requests
    authorize_dot_net.md5_hash = ENV['AUTHORIZE_NET_MD5_HASH']

    # Test or production mode, default to false, changes the payment
    # gateway target URL
    #
    # By default, the test mode is activated in all environments but you just
    # need to add `AUTHORIZE_NET_PRODUCTION_MODE=true` in your environment variables
    # and restart your server to switch to production mode
    #
    authorize_dot_net.test_mode = (ENV['AUTHORIZE_NET_PRODUCTION_MODE'] != 'true')
  end

