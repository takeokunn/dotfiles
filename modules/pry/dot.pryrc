# frozen_string_literal: true

begin
  require 'awesome_print'
rescue LoadError
else
  AwesomePrint.pry!
end

# editor
Pry.editor = 'vi'

# config
Pry.config.color = true
Pry.config.ls.separator = "\n"
Pry.config.ls.heading_color = :magenta
Pry.config.ls.public_method_color = :green
Pry.config.ls.protected_method_color = :yellow
Pry.config.ls.private_method_color = :bright_black

# alias
Pry.commands.alias_command 'c', 'continue' rescue nil
Pry.commands.alias_command 's', 'step' rescue nil
Pry.commands.alias_command 'n', 'next' rescue nil

# prompt
Pry.config.prompt = Pry::Prompt.new(
  'custom',
  'my custom prompt',
  [
    ->(_obj, _nest_level, _) { "✎ " },
    ->(*) { "  " }
  ]
)
