

#This is what is what I could quickly make in ruby. I'll finish the fp2dec in the morning.
#Johnny

def dec2binary(num)
  num.to_i
  converted = "%08b" % num
  puts converted
  return converted
end

def binary2dec(num)
  strnum = num.to_s
  converted = strnum.to_i(base=2)
  puts converted
  return
end



def fp2dec(num) #takes string or int or float
  strnum = num.to_s
  sign_bit = strnum[0]
  exponent = strnum[1..3]
  mantissa = strnum[4..-1]

  puts sign_bit, exponent, mantissa
  return
end


