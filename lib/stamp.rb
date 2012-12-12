require "date"
require "time"

require "stamp/emitters/modifiable"
require "stamp/emitters/am_pm"
require "stamp/emitters/composite"
require "stamp/emitters/delegate"
require "stamp/emitters/lookup"
require "stamp/emitters/ordinal"
require "stamp/emitters/string"
require "stamp/emitters/two_digit"
require "stamp/translator"
require "stamp/version"

module Stamp

  # Formats a date/time using a human-friendly example as a template.
  #
  # @param  [String] example a human-friendly date/time example
  # @return [String] the formatted date or time
  #
  # @example
  #   Date.new(2012, 12, 21).stamp("Jan 1, 1999") #=> "Dec 21, 2012"
  def stamp(example)
    Translator.new.translate(example).format(self)
  end
  alias :stamp_like  :stamp
  alias :format_like :stamp
end

Date.send(:include, ::Stamp)
Time.send(:include, ::Stamp)