
sign = "1"
excess = "101"
mantissa = "1010"


class Notation

################################
	
	def self.sign(sign)
		if sign == "1":
			sign = "+"
		else
			sign = "-"
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
	
	def self.mantissa(excess, mantissa)
		number = 0
		iterator = 1
		if excess <= 0
			mantissa = "." + ("0" * -excess) + mantissa
			mantissa[1..4].split('').each do |i|
				if i == "1"
					number += 2 ** -iterator
					iterator += 1
					puts number
				else
					iterator += 1
				end
			end		
		else
			mantissa.insert(excess, ".")
			index = mantissa.index(".")
			mantissa[index..4].split('').each do |i|
				if i == "1"
					number += 2 ** -iterator
					iterator += 1
					puts number
				else
					iterator += 1
				end
			end
		end
	end
end

#################################

Notation.sign(sign)
Notation.excess(excess)
Notation.mantissa(Notation.excess(excess), mantissa)

#################################