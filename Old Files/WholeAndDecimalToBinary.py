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
import math

P1 = IF * 2
Pos1 = math.modf(P1)
PosOne = Pos1[0]

P2 = Pos1[0] * 2
Pos2 = math.modf(P2)
PosTwo = Pos2[0]

P3 = PosTwo * 2
Pos3 = math.modf(P3)
PosThree = Pos3[0]

P4 = PosThree * 2

Positions = (P1,P2,P3,P4)
for i in Positions:
#    print(i)
    if i >= 1:
        print('1')
    else:
        print('0')
