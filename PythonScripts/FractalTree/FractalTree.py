import turtle as tu
my_turtle = tu.Turtle()
my_turtle.screen.bgcolor('red')
my_turtle.left(90)
my_turtle.speed(200)
my_turtle.color('green')
my_turtle.pensize(5)
my_turtle.screen.title('Fractal Tree')
def draw_fractal(blen):
    if(blen<10):
        return
    else:
        my_turtle.forward(blen)
        my_turtle.left(30)
        draw_fractal(3*blen/4)
        my_turtle.right(60)
        draw_fractal(3*blen/4)
        my_turtle.left(30)
        my_turtle.backward(blen)
draw_fractal(80)
my_turtle = tu.done()
