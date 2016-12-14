require 'sinatra/base'
require 'sinatra/json'
require_relative 'services/answers_service.rb'

module FizzBuzz
  class Application < Sinatra::Base
    configure do
      set :public_folder, File.dirname(__FILE__) + '/assets'
      set :static, true
    end

    get '/' do
      erb :index
    end

    post '/get_result' do
      service = AnswersService.new
      json result: service.check(number)
    end

    def number
      params[:number].to_i
    end
  end
end