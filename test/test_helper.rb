require 'bundler/setup'
require 'minitest/autorun'

require 'ventana'

# Remove deprecation warning
I18n.enforce_available_locales = true

class TestCase < Minitest::Unit::TestCase
end
