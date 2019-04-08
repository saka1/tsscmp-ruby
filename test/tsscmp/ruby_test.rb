require "test_helper"

class Tsscmp::RubyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Tsscmp::VERSION
  end

  def test_compare
    assert Tsscmp.compare("a", "a")
  end
end
