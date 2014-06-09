require 'test_helper'
require 'csv'
require 'time'

# This test case runs all the examples from the examples.csv file
class ExampleTest < TestCase

  CSV.read(File.expand_path('../examples.csv',__FILE__),{
    headers: true
  }).each_with_index do |row, index|
    define_method "test_example_#{index + 1}" do
      I18n.with_locale row['locale'] do
        assert_equal row['expectation'], Ventana(Time.parse(row['from']), Time.parse(row['to']))
      end
    end
  end

end
