import pygame, sys
from pygame.locals import *

pygame.init()
DISPLAYSURF = pygame.display.set_mode((400, 400))


pygame.display.set_caption('Interactive Floating Point Converter')


DISPLAYSURF.fill(( 200, 200, 200))

myfont = pygame.font.SysFont("times", 20)

myfont.set_bold(1)

label = myfont.render("Binary", 1, (0,0,0), (255,255,255))

DISPLAYSURF.blit(label, (100, 100))

while True: #main game loop
    for event in pygame.event.get():
        if event.type == QUIT:
            pygame.quit()
            sys.exit()
    pygame.display.update()