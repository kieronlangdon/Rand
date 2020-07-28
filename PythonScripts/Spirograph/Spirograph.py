import turtle
turtle.bgcolor('black')
turtle.pensize(3)
turtle.speed(10)
turtle.title('Spirograph')

for i in range(6):
    for colours in ['red', 'magenta', 'blue', 'cyan', 'green', 'yellow', 'white' ]:
        turtle.color(colours)
        turtle.circle(100)
        turtle.left(10)
turtle.hideturtle()
