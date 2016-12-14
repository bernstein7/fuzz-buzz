require_relative '../refinements/dividable.rb'

class AnswersService
  using Dividable

  def check(num)
    return 'FizzBuzz' if (num.dividable_by_three? and num.dividable_by_five?)
    return 'Fizz'     if num.dividable_by_three?
    return 'Buzz'     if num.dividable_by_five?
    num.to_s
  end
end