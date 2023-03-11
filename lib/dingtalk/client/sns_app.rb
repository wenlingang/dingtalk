require 'dingtalk/client/base'

module Dingtalk
  module Client
    class SnsApp < Base
      api_mount :sns

      attr_reader :app_id, :app_secret

      def initialize(options = {})
        super
        init_attrs :app_id, :app_secret
      end
    end
  end
end
