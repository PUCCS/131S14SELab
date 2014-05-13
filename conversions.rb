

#This is what is what I could quickly make in ruby. I'll finish the fp2dec in the morning.
#Johnny

def dec2binary(num)
  converted = "%08b" % num.to_i
end

def binary2dec(num)
  strnum = num.to_s
  converted = strnum.to_i(base=2)
end


def fp2dec(num) #takes string or int or float
  strnum = num.to_s
  sign_bit = strnum[0]
  exponent = strnum[1..3]
  mantissa = strnum[4..-1]

  puts sign_bit, exponent, mantissa
  return
end


puts dec2binary(15)
puts binary2dec(1111)