require 'rubygems'
require 'bundler'

Bundler.require(:default, ENV['RACK_ENV'])

require './app.rb'

run FizzBuzz::Application.new