require 'sinatra/base'
require 'sinatra/json'
require_relative 'services/answers_service.rb'

module FizzBuzz
  class Application < Sinatra::Base

    post '/get_result' do
      service = AnswersService.new
      json result: service.check(number)
    end

    def number
      params[:number].to_i
    end
  end
end