W = input('Whole Part > ')
I = int(W)

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
IF = float(F)
# This section turns decimals into binary values.
P1 = IF * 2
P2 = P1 * 2
P3 = P2 * 2
P4F = P3 * 2

Positions = (P1,P2,P3,P4)
for i in Positions:
    if i > 1:
        print('1')
    else:
        print('0')
