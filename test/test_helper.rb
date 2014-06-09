require 'bundler/setup'
require 'test/unit'

require 'ventana'

# Remove deprecation warning
I18n.enforce_available_locales = true

class TestCase < Test::Unit::TestCase
end
