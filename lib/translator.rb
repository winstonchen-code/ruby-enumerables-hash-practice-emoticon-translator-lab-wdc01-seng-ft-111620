# require modules 
require "yaml"
path = YAML.load_file('./lib/emoticons.yml')
puts path

def load_library(path)
  emoji_hash = {}
  emoji_hash["get_meaning"] = {}
  emoji_hash["get_emoticon"] = {}
  emoji = YAML.load_file(path)
  emoji.each do |word, emojis|
    emoji_hash["get_meaning"][emojis[1]] = word
    emoji_hash["get_emoticon"][emojis[0]] = emojis[1]
  end
  emoji_hash
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