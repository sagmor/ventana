require 'test_helper'
require 'csv'

class ExampleTest < TestCase

  CSV.foreach(File.expand_path('../examples.csv',__FILE__),{
    headers: true
  }).each_with_index do |row, index|
    define_method "test_example_#{index + 1}" do
      I18n.with_locale row['locale'] do
        assert_equal row['expectation'], Ventana(row['from'], row['to'])
      end
    end
  end

end
