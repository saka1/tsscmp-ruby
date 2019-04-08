require "tsscmp/version"

require 'securerandom'

module Tsscmp
  module_function
  def compare(a, b)
    return false unless a.size == b.size
    true
  end
end

