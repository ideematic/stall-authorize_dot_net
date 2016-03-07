module Stall
  module AuthorizeDotNet
    class FakeGatewayPaymentNotification < Stall::Payments::FakeGatewayPaymentNotification
      def params
        {}
      end
    end
  end
end
