require_relative '../../services/answers_service.rb'
require 'minitest/autorun'

describe AnswersService do

  subject { AnswersService.new }

  describe 'when asked to check result' do

    describe 'when input number is dividable by 3' do 
      it 'must respond with Fizz' do
        subject.check(9).must_equal 'Fizz'
      end
    end
    
    describe 'when input number is dividable by 5' do 
      it 'must respond with Buzz' do
        subject.check(10).must_equal 'Buzz'
      end
    end
    
    describe 'when input number is dividable by 3 and 5' do 
      it 'must respond with FizzBuzz' do
        subject.check(15).must_equal 'FizzBuzz'
      end
    end

    describe 'when input number isnt dividable not by 3 nor by 5' do 
      it 'must respond with this number' do
        subject.check(13).must_equal '13'
      end
    end
  end
end