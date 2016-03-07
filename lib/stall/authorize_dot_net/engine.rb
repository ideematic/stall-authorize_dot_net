module Stall
  module AuthorizeDotNet
    class Engine < ::Rails::Engine
      initializer 'stall-authorize_dot_net.include_offsite_payments_action_view_helpers' do
        ActiveSupport.on_load(:action_view) do
          include OffsitePayments::ActionViewHelper
        end
      end
    end
  end
end
