require 'stall'
require 'offsite_payments'

module Stall
  module AuthorizeDotNet
    extend ActiveSupport::Autoload

    autoload :Version
    autoload :FakeGatewayPaymentNotification
  end
end

require 'stall/authorize_dot_net/gateway'
require 'stall/authorize_dot_net/engine'
