require "tsscmp/version"

require 'securerandom'
require 'openssl'

module Tsscmp
  module_function
  def compare(a, b)
    return false if a.nil? || b.nil?
    return false unless a.size == b.size

    key = SecureRandom.random_bytes(32)
    ah = OpenSSL::HMAC.hexdigest('sha256', key, a)
    bh = OpenSSL::HMAC.hexdigest('sha256', key, b)
    ah == bh
  end
end

