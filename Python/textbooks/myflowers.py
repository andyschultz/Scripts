from swampy.TurtleWorld import *
import math

world = TurtleWorld()
bob = Turtle()
bob.delay = 0.01

def polyline(t, n, length, angle):
    '''Draws n line segments with the given length and
    angle (in degrees) between them. t is a turtle.
    '''
    for i in range(n):
        fd(t, length)
        lt(t, angle)
    
def polygon(t,n,length):
    angle = 360.0/n
    polyline(t, n, langth, angle)

def square(t, length):
    polygon(t, 4, length)

def arc(t, r, angle):
    arc_length = 2 * math.pi * r * angle / 360
    n = int(arc_length / 3) + 1
    step_length = arc_length / n
    step_angle = float(angle) / n
    polyline(t, n, step_length, step_angle)

def circle(t,r):
    arc(t, r, 360)

def petal(t, r, angle):
    for i in range(2):
        arc(t, r, angle)
        lt(t, 180-angle)

def flower(t, n, r, angle):
    for i in range(n):
        petal(t,r,angle)
        lt(t, 360.0/n)
        
flower(bob,12,100,120)
        
wait_for_user()