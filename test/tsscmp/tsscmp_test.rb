require 'test_helper'

class TestTsscmp < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Tsscmp::VERSION
  end

  def test_compare
    assert  Tsscmp.compare('a', 'a')
    assert !Tsscmp.compare('a', 'b')
    assert !Tsscmp.compare('a', 'aa')
  end

  def test_compare_nil
    assert !Tsscmp.compare('a', nil)
    assert !Tsscmp.compare(nil, 'a')
    assert !Tsscmp.compare(nil, nil)
  end

  def test_compare_not_string
    # Don't use as non-string compare
    assert_raises(TypeError) do
      assert !Tsscmp.compare(1, 1)
    end
  end
end
