

W = input('Whole Part > ')
#F = input('Fractional Part > ')


# Whole number to binary.

PositionOne = W % 2

a = W / 2

PositionTwo = a % 2

b = a / 2

PositionThree = b % 2

print(PositionOne,PositionTwo,PositionThree)


# Fractional part to binary.

