
class Notation

############Floating Point Notation to Decimal################

################################

	def self.reverse_sign(operand) #Converts given operand to a int.
		if operand == "+"
			operand = "0"
		else
			operand = "1"
		end #Output is a string.
	end

################################
	
	def self.sign(sign) #Converts given sign number to an operand.
		if sign == "1"
			sign = "-"
		else
			sign = "+"
		end #Output is a string
	end

################################

	def self.reverse_excess(decimal) #Converts given number to excess notation.
		if decimal.to_i >= 0
			decimal = decimal.to_i.to_s(2)
		else
			if decimal.index("-4") == 0
				decimal = "000"
			elsif decimal.index("-3") == 0
				decimal = "001"
			elsif decimal.index("-2") == 0
				decimal = "010"
			else
				decimal = "011"
			end	
		end #Output is a string. (decimal)
	end

################################	
	
	def self.excess(excess) #Converts given excess notation to a number.
		if excess.index("1") == 0
			excess = excess[1...3]
			excess = excess.to_i.to_s(2)	
		else
			excess = excess.to_i.to_s(2)
			if excess == 3
				excess = -1
			elsif excess == 2
				excess = -2
			elsif excess == 1
				excess = -3
			else
				excess = -4
			end
		end #Output is a string. (excess)
	end

#################################
	
	def self.reverse_mantissa(decimal)
		return "SWAG"

#################################

  def self.mantissa(excess, mantissa) #Converts the given mantissa to fraction
		number = 0                    #or point decimal form.
		iterator = 1
		if excess <= 0
			mantissa = "." + ("0" * -excess) + mantissa
			mantissa[1..4].split('').each do |i|
				if i == "1"
					number += 2 ** -iterator
					iterator += 1
				else
					iterator += 1
				end
			end		
		else
			mantissa.insert(excess, ".")
			index = mantissa.index(".")
			puts mantissa[index..4]
			mantissa[(index + 1)..4].split('').each do |i|
				if i == "1"
					number += 2 ** -iterator
					iterator += 1
				else
					iterator += 1
				end
			end #Outputs are ints. (number)
		end     #Excess + Number gives the final decimal form
	end			#Excess[0..4] gives the moved decimal form of the mantissa.

###################################

###########################################################
  

#############Bin to Dec & Dec to Bin###########
 
##########################

  def self.dec2binary(num) #Converts a decimal to binary.
    converted = "%08b" % num.to_i
    converted = converted.to_s
  end #Output is a string.
  
##########################

  def self.binary2dec(num) #Converts binary to decimal.
    converted = strnum.to_s.to_i(2).to_s
  end #Output is a string.

##########################

#################################################
end