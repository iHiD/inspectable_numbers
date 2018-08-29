require "test_helper"

class InspectableNumbersTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::InspectableNumbers::VERSION
  end

  def test_it_formats_integers
    assert_equal "1_234_567", 1_234_567.inspect
  end

  def test_it_formats_floats
    assert_equal "1_234_567.974737", 1_234_567.974737.inspect
  end

  def test_it_respect_integer_base
    assert_equal "4553207", 1_234_567.inspect(8)
  end
end
