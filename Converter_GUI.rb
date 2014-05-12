# Ruby Shoes Versions of GUI


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
	
	@like_scientific_exponent = edit_line width: 15
	@like_scientific_exponent.move(45, 50)
	
	#line going to exponent
	line 57, 35, 57, 65
	
	@times = para "*"
	@times.move(70, 65)
	
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

Shoes.app do
	
	set_up_textboxes()

	
 end