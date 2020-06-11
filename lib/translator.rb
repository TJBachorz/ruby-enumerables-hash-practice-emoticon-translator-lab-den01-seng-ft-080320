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


def get_japanese_emoticon(file_path, emoticon)
  emoji_list = load_library(file_path)
  emoji_list.each do |emoji_name, translations|
    if translations[:english] == emoticon
      return translations[:japanese]
    end
  end
end

def get_english_meaning(file_path, emoticon)
  emojis = load_library(file_path)
  emojis.each do |emoji_name, translations|
    if translations[:japanese] == emoticon
      return emoji_name
    end
  end
  "Sorry, that emoticon was not found"
end