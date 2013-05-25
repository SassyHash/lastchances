#!/usr/bin/env ruby 

__DIR__ = File.expand_path File.dirname(__FILE__)

require "sinatra"
require "#{__DIR__}/../config"

get '/' do 
  "hello, world. My name is #{ Configuration.settings['name'] }. This game is for #{ Configuration.settings['class_year'] }"
end 
