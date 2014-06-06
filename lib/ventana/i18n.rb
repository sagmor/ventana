require "i18n"

# Add gem translations to load path
I18n.load_path << File.expand_path("../locales/*.yml",__FILE__)

module Ventana
  SCOPE = :ventana
end
