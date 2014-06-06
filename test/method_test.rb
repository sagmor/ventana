class MethodTest < TestCase
  TEST_FROM = Time.new(2014,6,3)
  TEST_TO = Time.new(2014,6,4)


  def test_ventana_method_existence
    assert Ventana(TEST_FROM,TEST_TO)
  end

  def test_must_show_days?
    [
      [[2014,6,3], [2014,6,4]],
      [[2016,2,1],[2016,2,28]]
    ].each do |from,to|
      assert Ventana.show_days?(Time.new(*from), Time.new(*to))
    end
  end

  def test_must_not_show_days?
    [
      [[2016,2,1],[2016,2,29]],
      [[2014,2,1],[2014,2,28]],
      [[2014,6,1],[2014,6,30]],
      [[2014,6,1],[2014,7,31]]
    ].each do |from,to|
      assert !Ventana.show_days?(Time.new(*from), Time.new(*to))
    end

  end

  def test_dates_must_must_be_passed_in_the_correct_order
    assert_raises(ArgumentError){ Ventana(TEST_TO,TEST_FROM) }
  end

end

