module Wijet
  module SimpleEnumerations
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def has_enumerated(name)
        Enumeration.setup

        name = name.to_s

        define_method("#{name}=") do |value|
          value = value.to_s
          unless Enumeration[name].include?(value) or value.blank?
            raise ArgumentError, "'#{value}' is not a value of enumeration '#{name}'"
          end
          write_attribute(name, value)
        end

        define_method(name) do
          Enumeration.new(attributes[name])
        end
      end
    end

    module EnumerationString
      class Enumeration < String
        def initialize(value = "")
          super(value)
        end

        class << self
          def setup
            all.values.flatten.uniq.each do |value|
              define_method("#{value.gsub(/[^[:alnum:]]/, '_')}?") { self == value }
            end unless all.blank?
          end

          def [](name)
            raise ArgumentError, "Enumeration '#{name}' doesn't exist" unless all.has_key?(name.to_s)
            all[name.to_s]
          end

          def all
            Rails.cache.fetch('_simple_enumerations_') do
              YAML::load(File.read(File.join(Rails.root, 'config', 'enumerations.yml')))
            end
          end
        end

        def ==(object)
          super(object.to_s)
        end
      end
    end
  end
end

include Wijet::SimpleEnumerations::EnumerationString