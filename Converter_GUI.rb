# Ruby Shoes Versions of GUI
load 'NEW_Merged_Conversions.rb'

def set_floating_point()
	@sign_bit = edit_line width: 15
	@sign_bit.move(10, 10)
	
	@exponent = edit_line width: 30
	@exponent.move(35, 10)
	
	@mantissa = edit_line width: 45
	@mantissa.move(80, 10)
	
end
def set_like_scientific()
	@like_scientific_sign = edit_line width: 15
	@like_scientific_sign.move(10, 60)
	
	#line going to sign
	line 23, 35, 23, 65
	
	@two = para "2"
	@two.move(35, 65)
	
	@like_scientific_exponent = edit_line width: 20
	@like_scientific_exponent.move(45, 50)
	
	#line going to exponent
	line 57, 35, 57, 65
	
	@times = para "*"
	@times.move(72, 65)
	
	@like_scientific_numerator = edit_line width: 45
	@like_scientific_numerator.move(80, 40)
	
	#line below numerator
	line 85, 75, 133, 75
	#line going to mantissa
	line 107, 25, 107, 55
	
	@two = para "16"
	@two.move(95, 75)
	
	
end
def set_binary()
	@binary_sign = edit_line width: 15
	@binary_sign.move(10, 110)
	
	#line going to sign
	line 23, 65, 23, 125
	
	@binary_number = edit_line width: 45
	@binary_number.move(45, 110)
	
	#line going to numerator
	line 130, 57, 140, 57
	line 140, 57, 140, 127
	line 80, 127, 140, 127

end
def set_fraction()

	@fraction_whole_number = edit_line width: 30
	@fraction_whole_number.move(10, 170)
	
	#fraction line
	line 53, 185, 90, 185
	
	@fraction_numerator = edit_line width: 30
	@fraction_numerator.move(50, 150)
	
	@fraction_denominator = edit_line width: 30
	@fraction_denominator.move(50, 187)
	
end
def set_decimal

	@decimal = edit_line width: 75
	@decimal.move(10, 225)
	
end
def set_up_textboxes()

	set_floating_point()
	set_like_scientific()
	set_binary()
	set_fraction()
	set_decimal()
	
end

def change_sign()

	@sign_bit.change() do
		@like_scientific_sign.text = Notation.sign(@sign_bit.text)
		@binary_sign.text = Notation.sign(@sign_bit.text)
	end
	@like_scientific_sign.change() do
		@sign_bit.text = Notation.reverse_sign(@like_scientific_sign.text)
		@binary_sign.text = @like_scientific_sign.text
	end
	@binary_sign.change() do
		@sign_bit.text = Notation.reverse_sign(@binary_sign.text)
		@like_scientific_sign.text = @binary_sign.text
	end
end
def change_exponent()

	@exponent.change() do
	
		if @exponent.text.length == 3
			@like_scientific_exponent.text = Notation.excess(@exponent.text)
			change_like_scientific()
		end
	end
	##### reverse
end
def change_mantissa()
	
	@mantissa.change() do
	
		if @mantissa.text.length == 4
			@like_scientific_numerator.text = Notation.binary2dec(@mantissa.text)
			change_like_scientific()
		end
	end
	
	@like_scientific_numerator.change() do
		@mantissa.text = Notation.dec2binary(@like_scientific_numerator.text)
		change_like_scientific()
	end
	
end
def change_like_scientific()	
	if @exponent.text.length == 3
		if @mantissa.text.length == 4
			@binary_number.text = Notation.mantissa(Notation.excess(@exponent.text), @mantissa.text, "float")
			change_answer()
			change_fraction()
		end
	end
	
end

def change_fraction()
	@fraction_whole_number.text = change_answer.to_i
	@fraction_numerator.text = Notation.mantissa(Notation.excess(@exponent.text), @mantissa.text, "fraction")[0]
	@fraction_denominator.text = Notation.mantissa(Notation.excess(@exponent.text), @mantissa.text, "fraction")[1]
	
end

def change_answer()
	if @sign_bit.text == "1"
		num = (Notation.mantissa(Notation.excess(@exponent.text), @mantissa.text, "answer").to_f * -1).to_s
	else
		num = Notation.mantissa(Notation.excess(@exponent.text), @mantissa.text, "answer")
	end
	@decimal.text = num
end


Shoes.app do
	
	set_up_textboxes()
	change_sign()
	change_exponent()
	#too do reverse exponent
	change_mantissa()

	
	


 end
