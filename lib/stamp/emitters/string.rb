module Stamp
  module Emitters
    class String
      attr_reader :value

      EMPTY_STRING = ''

      def initialize(value)
        @value = value || EMPTY_STRING
      end

      def format(target)
        value
      end

      def <<(emitter)
        value << emitter.value
      end

      def field
        nil
      end
    end
  end
end