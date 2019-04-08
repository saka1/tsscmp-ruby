require "test_helper"

class Tsscmp::RubyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Tsscmp::VERSION
  end

  def test_compare
    assert Tsscmp.compare("a", "a")
    assert !Tsscmp.compare("a", "b")
  end

  def test_compare_to_nil
    assert !Tsscmp.compare("a", nil)
    assert !Tsscmp.compare(nil, "a")
  end
end

