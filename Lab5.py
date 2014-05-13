W = input('Whole Part > ')
I = int(W)
#F = input('Fractional Part > ')
# Whole number to binary.

PositionOne = I % 2

a = I / 2

PositionTwo = a % 2

b = a / 2

PositionThree = b % 2

c = b / 2

P4 = c % 2

print(int(P4),int(PositionThree),int(PositionTwo),int(PositionOne))

# Fractional part to binary.

F = input('Fractional Part > ')
