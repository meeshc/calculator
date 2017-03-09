class CalculatorController < ApplicationController
	def calculate
		@first = params[:num1].to_i
		@second = params[:num2].to_i
		@attribute = params[:attribute]

		if (@attribute == 'add')
			@result = @first + @second
		elsif (@attribute == 'sub')
			@result = @first - @second
		elsif (@attribute == 'mul')
			@result = @first * @second
		else
			@result = @first / @second rescue 0
		end
	end
end
