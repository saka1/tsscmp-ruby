require 'tsscmp/version'

require 'securerandom'
require 'openssl'

module Tsscmp
  module_function

  def compare(a, b) # rubocop:disable Naming/UncommunicativeMethodParamName:
    return false if a.nil? || b.nil?

    # assume the arguments is String
    raise TypeError unless a.is_a?(String) || b.is_a?(String)
    return false unless a.size == b.size

    key = SecureRandom.random_bytes(32)
    ah = OpenSSL::HMAC.hexdigest('sha256', key, a)
    bh = OpenSSL::HMAC.hexdigest('sha256', key, b)
    ah == bh && a == b
  end
end

