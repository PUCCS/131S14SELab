load 'Rational.rb'


class Notation

################################
	
	def self.sign(sign)
		if sign == "1"
			sign = "-"
		else
			sign = "+"
		end
	end

##################################

	def self.reverse_sign(operand)
		if operand == "+"
			operand = 0
		else
			operand = 1
		end
	end

################################	
	
	def self.excess(excess)
		if excess.index("1") == 0
			excess = excess[1...3]
			excess = excess.to_i(2)		
		else
			excess = excess.to_i(2)
			if excess == 3
				excess = -1
			elsif excess == 2
				excess = -2
			elsif excess == 1
				excess = -3
			else
				excess = -4
			end
		end
	end

#################################
	
  def self.mantissa(excess, mantissa, return_type)
		number = 0
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
			#puts mantissa[0..4]
			mantissa[(index + 1)..4].split('').each do |i|
				if i == "1"
					number += 2 ** -iterator
					iterator += 1
				else
					iterator += 1
				end
			end
		end
		if return_type == "float"
			return mantissa[0..4]
		elsif return_type == "fraction"
			return number.to_f.to_fraction
		elsif return_type == "answer"
			return number.to_f + excess
		end
end
  

#################################
  def self.dec2binary(num)
    converted = "%04b" % num.to_i
  end
  
  
  def self.binary2dec(num)
    strnum = num.to_s
    converted = strnum.to_i(base=2)
  end
  
end
#################################


#################################

