# require modules 
require "yaml"
path = YAML.load_file('./lib/emoticons.yml')
puts path

def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticon_hash["get_emoticon"] = Hash.new
  emoticon_hash["get_meaning"] = Hash.new

  emoticons.each do |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  end
  emoticon_hash
end
  # code goes here

def get_japanese_emoticon(path, emoticon)
  emoji = load_library(path)
  if emoji["get_emoticon"].has_key?(emoticon)
    emoji["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
  # code goes here

def get_english_meaning(path, emoticon)
  emoji = load_library(path)
  if emoji["get_meaning"].has_key?(emoticon)
    emoji["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
  # code goes here