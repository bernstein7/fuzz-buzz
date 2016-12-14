module Dividable
  refine Fixnum do
    def dividable_by_three?
      (self % 3).zero?
    end

    def dividable_by_five?
      (self % 5).zero?
    end
  end
end