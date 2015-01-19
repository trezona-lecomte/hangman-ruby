require_relative '../lib/letter'
require_relative '../lib/word'
require_relative '../lib/dictionary'
require_relative '../lib/hangman'
require_relative '../lib/game'
require_relative '../lib/console_ui'
require_relative '../lib/game_controller'
require 'yaml'
require 'rspec'

RSpec.configure do |config|
  config.tty = true
  config.color = true
  config.formatter = :documentation # , :textmate, :progress, 
end