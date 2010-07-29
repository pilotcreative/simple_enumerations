require "simple_enumerations"
require "rails"

module Wijet
  module SimpleEnumerations
    class Railtie < Rails::Railtie
      initializer "wijet.simple_enumerations.init" do
        if File.exists?(File.join(Rails.root, "config", "enumerations.yml"))
          require "simple_enumerations/simple_enumerations"
          require "simple_enumerations/symbol_extension"
          require "simple_enumerations/form_helper"

          ActiveRecord::Base.send(:include, Wijet::SimpleEnumerations)
          ActionView::Helpers::FormBuilder.send(:include, Wijet::FormHelper)
        end
      end
    end
  end
end