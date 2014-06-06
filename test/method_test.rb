class ExampleTest < TestCase
  TEST_FROM = Time.new(2014,6,3)
  TEST_TO = Time.new(2014,6,4)

  def test_ventana_method_existence
    assert Ventana(TEST_FROM,TEST_TO)
  end

end

