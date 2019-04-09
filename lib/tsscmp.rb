require 'tsscmp/version'

require 'securerandom'
require 'openssl'

module Tsscmp
  module_function

  # Constant time string comparison.
  #
  # Returns true if the two arguments have same value, otherwise false.
  def compare(a, b) # rubocop:disable Naming/UncommunicativeMethodParamName:
    return false if a.nil? || b.nil?

    # assume the arguments is String
    raise TypeError unless a.is_a?(String) || b.is_a?(String)
    return false unless a.size == b.size

    key = SecureRandom.random_bytes(32)
    ah = OpenSSL::HMAC.hexdigest('sha256', key, a)
    bh = OpenSSL::HMAC.hexdigest('sha256', key, b)

    # Implementation Note:
    # `&& a == b` is a very very conservative comparison.
    # In my opnion, `ah == bh` is enough to compare securely although several other implementations use
    # the strictly method such as:
    #  - https://github.com/rails/rails/blob/v5.2.3/activesupport/lib/active_support/security_utils.rb#L27
    #  - https://github.com/suryagh/tsscmp/blob/v1.0.6/lib/index.js#L35
    # So, as of the present time, I add `&& a == b`.
    ah == bh && a == b
  end
end
