# frozen_string_literal: true

# plugin
begin
  require 'awesome_print'
rescue LoadError# rubocop:disable Lint/SuppressedException
else
  AwesomePrint.pry!
end

# config
Pry.config.color = true
Pry.config.ls.separator = "\n"
Pry.config.ls.heading_color = :magenta
Pry.config.ls.public_method_color = :green
Pry.config.ls.protected_method_color = :yellow
Pry.config.ls.private_method_color = :bright_black

# prompt
# Pry.config.prompt = Pry::Prompt.new(
#   'custom',
#   'my custom prompt',
#   [
#     ->(_obj, _nest_level, _) { "pry> " },
#     ->(*) { "  " }
#   ]
# )
