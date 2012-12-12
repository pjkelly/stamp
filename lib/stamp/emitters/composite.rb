module Stamp
  module Emitters
    class Composite
      include Enumerable

      EMPTY_STRING = ''

      def initialize
        @emitters = []
      end

      def format(target)
        @emitters.map { |e| e.format(target) }.join(EMPTY_STRING)
      end

      def <<(emitter)
        if emitter.is_a?(Enumerable)
          emitter.each { |e| @emitters << e }
        else
          @emitters << emitter
        end
      end

      def each(&block)
        @emitters.each(&block)
      end
    end
  end
end