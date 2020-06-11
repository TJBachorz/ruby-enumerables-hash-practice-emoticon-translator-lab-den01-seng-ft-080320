# require modules here
require 'pry'
require "yaml"


def load_library(file_path)
  emoji_list = YAML.load_file(file_path)
  emojis = Hash.new
  emoji_list.each do |k, v|
    emojis[k] = {english: v[0], japanese: v[1]}
  end
  emojis
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(file_path, emoticon)
  emojis = load_library(file_path)
  #binding.pry
  emojis.each do |emoji_name, translations|
    #binding.pry
    if translations[:japanese].any? { |jp_emoji| jp_emoji == emoticon }
      return emoji_name
    end
  end
end