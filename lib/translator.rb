# require modules here
require 'pry'
require "yaml"


def load_library(file_path)
  emoji_list = YAML.load_file(file_path)
  binding.pry
  emoji_list
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end