# require modules here
require 'pry'
require "yaml"


def load_library
  emojis = YAML.load_file('emoticons.yml')
  binding.pry
  emojis
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end