# frozen_string_literal: true
require 'erb'
require 'json'

categories = JSON.load(File.new('news.json', 'r'))

File.open('index.erb', 'r') do |file|
  binded = ERB.new(file.read).result(binding)
  File.open('index.html', 'w') {|f| f.write(binded)}
end
